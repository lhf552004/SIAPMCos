using SIAPM.Entities.Lines;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using static Secs4Net.SecsGem;

namespace Secs4Net
{
    /// <summary>
    /// Hander the secs equipment at server sides
    /// </summary>
    public class SecsEquipment
    {
        //public IPAddress Ip { get; set; }
        public IPEndPoint EndPoint { get; set; }
        public SCESEquipment SCESEquipment { get; private set; }
        public Socket SocketClient { get; private set; }
        public ushort DeviceId { get; set; }
        public byte[] ArrMsgRec { get; private set; }
        private byte[] messageBytes;
        public int DecoderBufferSize => 0x4000;
        public ConnectionState State { get; private set; }
        public MessageHeader MsgHeader { get; private set; }
        public SecsMessage Msg { get; private set; }
        int _messageDataLength = 0;
        private bool isHeader = true;
        private StreamDecoder decoder = new StreamDecoder();
        private readonly SystemByteGenerator _systemByte = new SystemByteGenerator();
        internal int NewSystemId => _systemByte.New();
        private readonly ConcurrentDictionary<int, TaskCompletionSourceToken> _replyExpectedMsgs = new ConcurrentDictionary<int, TaskCompletionSourceToken>();
        private readonly EventHandler<SocketAsyncEventArgs> _sendDataMessageCompleteHandler;
        public event EventHandler<ConnectionState> ConnectionChanged;
        public event EventHandler<SecsMessage> DataReceived;
        public event EventHandler Connected;
        public SecsEquipment(SCESEquipment sCESEquipment)
        {
            SCESEquipment = sCESEquipment;
            if (string.IsNullOrEmpty(SCESEquipment.Address) || SCESEquipment.Port <= 0)
            {
                throw new Exception("IP or port setting is empty");
            }

            var Ip = IPAddress.Parse(SCESEquipment.Address);
            EndPoint = new IPEndPoint(Ip, SCESEquipment.Port);
            SocketClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            State = ConnectionState.None;
            _sendDataMessageCompleteHandler = SendDataMessageCompleteHandler;
            ArrMsgRec = new byte[DecoderBufferSize];
            messageBytes = new byte[DecoderBufferSize];
            DeviceId = 0;

        }
        public SecsEquipment(string ip, int port)
        {
            
            var Ip = IPAddress.Parse(ip);
            EndPoint = new IPEndPoint(Ip, port);
            SocketClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            State = ConnectionState.None;
            _sendDataMessageCompleteHandler = SendDataMessageCompleteHandler;
            ArrMsgRec = new byte[DecoderBufferSize];
            messageBytes = new byte[DecoderBufferSize];
            DeviceId = 0;
            
        }
        public SecsEquipment(string ip, string port): this(ip, int.Parse(port))
        {
            
            //var Ip = IPAddress.Parse(ip);
            //var EndPoint = new IPEndPoint(Ip, int.Parse(port));
            //SocketClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            //State = ConnectionState.None;
            //_sendDataMessageCompleteHandler = SendDataMessageCompleteHandler;
            //ArrMsgRec = new byte[DecoderBufferSize];
            //messageBytes = new byte[DecoderBufferSize];
            //DeviceId = 0;

        }
        public bool Connect()
        {
            bool connected = false;
            State = ConnectionState.Connecting;
            try
            {
                SocketClient.Connect(EndPoint);
                State = ConnectionState.Connected;
                var receiveCompleteEvent = new SocketAsyncEventArgs();
                receiveCompleteEvent.SetBuffer(ArrMsgRec, 0, ArrMsgRec.Length);
                receiveCompleteEvent.Completed += SocketReceiveEventCompleted;

                if (!SocketClient.ReceiveAsync(receiveCompleteEvent))
                {

                    SocketReceiveEventCompleted(SocketClient, receiveCompleteEvent);
                }
                Connected(SocketClient,null);
                connected = true;
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return connected;
            
        }
        public Task<SecsMessage> SendDataMessage(SecsMessage msg)
        {

            int systembyte = NewSystemId;
            var token = new TaskCompletionSourceToken(msg, systembyte, MessageType.DataMessage);
            if (msg.ReplyExpected)
                _replyExpectedMsgs[systembyte] = token;

            var header = new MessageHeader
            {
                S = msg.S,
                F = msg.F,
                ReplyExpected = msg.ReplyExpected,
                DeviceId = DeviceId,
                SystemBytes = systembyte
            };

            var bufferList = msg.RawDatas.Value;
            bufferList[1] = new ArraySegment<byte>(header.EncodeTo(new byte[10]));
            var eap = new SocketAsyncEventArgs
            {
                BufferList = bufferList,
                UserToken = token,
            };
            eap.Completed += _sendDataMessageCompleteHandler;
            SocketClient.Send(eap.BufferList.ToArray(), SocketFlags.None);

            //if (!sockClient.SendAsync(eap))
            //    SendDataMessageCompleteHandler(sockClient, eap);

            return token.Task;
        }
        private void SendDataMessageCompleteHandler(object socket, SocketAsyncEventArgs e)
        {

        }
        private void SocketReceiveEventCompleted(object sender, SocketAsyncEventArgs e)
        {
            if (e.SocketError != SocketError.Success)
            {
                var ex = new SocketException((int)e.SocketError);
              
                return;
            }

            try
            {
                //_timer8.Change(Timeout.Infinite, Timeout.Infinite);
                var receivedCount = e.BytesTransferred;
                if (receivedCount == 0)
                {
                    //StatusTextBox.AppendText("Received 0 byte.\n");
                    //CommunicationStateChanging(ConnectionState.Retry);
                    return;
                }
                parseMessage(e.Buffer, receivedCount);
                
                if (SocketClient is null)
                    return;

                if (!SocketClient.ReceiveAsync(e))
                    SocketReceiveEventCompleted(sender, e);
            }
            catch (Exception ex)
            {
                //StatusTextBox.AppendText($"Unexpected exception: {ex.Message}");
                //CommunicationStateChanging(ConnectionState.Retry);
            }
        }

        private void parseMessage(byte[] bytes, int length, bool isMessageComplelte = false)
        {

            if (isMessageComplelte == true)
            {

            }
            else
            {

                
                if (length == 14 && isHeader == true)
                {
                    //it is a header
                   
                    isHeader = false;
                    Array.Copy(bytes, messageBytes, length);


                    byte[] messageLengths = new byte[4];
                    Array.Copy(bytes, 0, messageLengths, 0, 4);
                    Array.Reverse(messageLengths, 0, 4);
                    _messageDataLength = (int)BitConverter.ToUInt32(messageLengths, 0);

                    MsgHeader = MessageHeader.Decode(bytes, 4);
                  
                }
                else
                {
                    isHeader = true;
                  
                    if (_messageDataLength - 10 == length)
                    {
                        //it is the message
                        int index = 0;
                        Item item = decoder.BufferedDecodeItem(bytes, ref index);
                        Msg = new SecsMessage(MsgHeader.S, MsgHeader.F, MsgHeader.ReplyExpected, "", item);
                        DataReceived(SocketClient,Msg);
                    }
                }
            }


        }

    }
}
