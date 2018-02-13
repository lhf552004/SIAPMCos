using Secs4Net;
using SIAPM.Entities.Lines;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using System.Windows.Forms;
using static Secs4Net.SecsGem;

namespace SIAPM.MESWinform
{
    public partial class MultiTest : Form
    {
        public MultiTest()
        {
            InitializeComponent();
            TextBox.CheckForIllegalCrossThreadCalls = false;
            ChatMsgReceivedEvent += chatMsgReceivedEventHandler;

            DecoderBufferSize = 0x5000;

            _secsDecoder = new StreamDecoder(DecoderBufferSize, HandleControlMessage, HandleDataMessage);
           
            messageBytes = new byte[DecoderBufferSize];



        }

        private IPAddress ip;
        public delegate void ParameterizedThreadStart(object sender, string msg);
        public event ParameterizedThreadStart LoginUserReceivedEvent;
        public event ParameterizedThreadStart UserListReceivedEvent;
        public event ParameterizedThreadStart ChatMsgReceivedEvent;
        public event ParameterizedThreadStart UserLogInfoEvent;
        private JavaScriptSerializer Serializer = new JavaScriptSerializer();
        public int DecoderBufferSize { get; private set; }
        private readonly StreamDecoder _secsDecoder;
        private readonly EventHandler<SocketAsyncEventArgs> _sendDataMessageCompleteHandler;
        private Thread threadClient = null; // 创建用于接收服务端消息的 线程；  
        private Socket sockClient = null;
        private List<Socket> socketClientList = new List<Socket>();
        private bool _isConnectToTCPServer;
        private Func<Task> _startImpl;
        private byte[] arrMsgRec;
        public void Start() => new TaskFactory(TaskScheduler.Default).StartNew(_startImpl);
        private StreamDecoder decoder = new StreamDecoder();
        private void e_Completed(object sender, SocketAsyncEventArgs e)
        {
            if (e.ConnectSocket != null)
            {
                StreamReader sr = new StreamReader(new NetworkStream(e.ConnectSocket));
                StatusTextBox.AppendText("connected\n");
               
                Console.WriteLine("Connection Established : " + e.RemoteEndPoint + " PC NAME : " + sr.ReadLine());
            }
            else
            {
                Console.WriteLine("Connection Failed : " + e.RemoteEndPoint);
            }
        }
        private bool hasCompleted = false;
        MessageHeader _msgHeader;
        SecsMessage _msg;
        int _messageDataLength = 0;
        private bool isHeader = true;
        private byte[] messageBytes; 
        private void dealwithMessage(byte[] bytes, int length, bool isMessageComplelte = false)
        {

            if(isMessageComplelte == true)
            {

            }
            else
            {

                //var newBuffer = new byte[DecoderBufferSize];
                //Array.Copy(bytes, newBuffer, DecoderBufferSize);
                //Array.Reverse(newBuffer);
                //int indexOfZero = 0;
                //for (; indexOfZero< DecoderBufferSize; indexOfZero++)
                //{
                //    if (newBuffer[indexOfZero] != 0)
                //    {
                //        break;
                //    }
                //}
                //int length = DecoderBufferSize - indexOfZero;
                //if (length < 14)
                //{
                //    throw new Exception("the length of message received is wrong.");
                //}
                if (length == 14 && isHeader == true)
                {
                    //it is a header
                    //if(hasCompleted == true)
                    //{
                    //    hasCompleted = false;
                    //    _msg = null;
                    //}
                    isHeader = false;
                    Array.Copy(bytes, messageBytes, length);


                    byte[] messageLengths = new byte[4];
                    Array.Copy(bytes, 0, messageLengths, 0, 4);
                    Array.Reverse(messageLengths, 0, 4);
                    _messageDataLength = (int)BitConverter.ToUInt32(messageLengths, 0);

                    _msgHeader = MessageHeader.Decode(bytes, 4);
                    if(_euip.DeviceID == 0)
                    {
                        StreamTextBox.Text = _msgHeader.S.ToString();
                        FunctionTextBox.Text = _msgHeader.F.ToString();
                        StatusTextBox.AppendText("get msg header for device 0.\n");
                    }
                    else
                    {
                        Stream2TextBox.Text = _msgHeader.S.ToString();
                        Function2TextBox.Text = _msgHeader.F.ToString();
                        StatusTextBox.AppendText("get msg header for device 1.\n");
                    }
                    
                }
                else
                {
                    isHeader = true;
                    //Array.Copy(bytes, 0, messageBytes,14, length);
                    //_secsDecoder.Buffer = messageBytes;
                    //_secsDecoder.Decode(14 + length);
                    if ( _messageDataLength - 10 == length)
                    {
                        //it is the message
                        int index = 0;
                        Item item = decoder.BufferedDecodeItem(bytes, ref index);
                        _msg = new SecsMessage(_msgHeader.S, _msgHeader.F, _msgHeader.ReplyExpected,"", item);
                        if (_euip.DeviceID == 0)
                        {
                            MessageTextBox.Text = _msg.ToString();
                            MessageTextBox.AppendText("\n");
                            MessageTextBox.AppendText(_msg.SecsItem.ToString());
                            StatusTextBox.AppendText("get msg data for device 0.\n");
                        }
                        else
                        {
                            Message2TextBox.Text = _msg.ToString();
                            Message2TextBox.AppendText("\n");
                            Message2TextBox.AppendText(_msg.SecsItem.ToString());
                            StatusTextBox.AppendText("get msg data for device 1.\n");
                        }
                            
                    }
                }
            }
           

        }
        class Equip
        {
            public int DeviceID { get; set; }
        }
        private Equip _euip;
        TaskFactory taskFactory = new TaskFactory();
        SecsEquipment sq1;
        SecsEquipment sq2;
        public void connectToTCPServer(string ServerIP, string ServerPort, string Server2IP, string Server2Port)
        {

            SCESEquipment sCESEquipment = new SCESEquipment();
            sCESEquipment.Address = "10.215.36.73";
            sCESEquipment.Port = 5005;

            sq1 = new SecsEquipment(ServerIP, ServerPort);
            sq2 = new SecsEquipment(Server2IP, Server2Port);

            sq1.Connected += ConnectedHandler;
            sq2.Connected += Connected2Handler;

            sq1.Connect();
            sq2.Connect();
            
            sq1.DataReceived += DataReceivedHandler;
            sq2.DataReceived += Data2ReceivedHandler;
          

        }

      
        private void SocketReceiveEventCompleted(object sender, SocketAsyncEventArgs e)
        {
            if (e.SocketError != SocketError.Success)
            {
                var ex = new SocketException((int)e.SocketError);
                StatusTextBox.AppendText($"RecieveComplete socket error:{ex.Message}, ErrorCode:{ex.SocketErrorCode}");
                
                return;
            }

            try
            {
                //_timer8.Change(Timeout.Infinite, Timeout.Infinite);
                var receivedCount = e.BytesTransferred;
                if (receivedCount == 0)
                {
                    StatusTextBox.AppendText("Received 0 byte.\n");
                    //CommunicationStateChanging(ConnectionState.Retry);
                    return;
                }
                dealwithMessage(e.Buffer, receivedCount);
                //var _msgHeader = MessageHeader.Decode(e.Buffer, 0);
                //                if (_secsDecoder.Decode(receivedCount))
                //                {
                //#if !DISABLE_T8
                //                    //_logger.Debug($"Start T8 Timer: {T8 / 1000} sec.");
                //                    //_timer8.Change(T8, Timeout.Infinite);
                //#endif
                //                }

                //                if (_secsDecoder.Buffer.Length != DecoderBufferSize)
                //                {
                //                    // buffer size changed
                //                    e.SetBuffer(_secsDecoder.Buffer, _secsDecoder.BufferOffset, _secsDecoder.BufferCount);
                //                    DecoderBufferSize = _secsDecoder.Buffer.Length;
                //                }
                //                else
                //                {
                //                    e.SetBuffer(_secsDecoder.BufferOffset, _secsDecoder.BufferCount);
                //                }
                
                if (sockClient is null || IsDisposed)
                    return;

                if (!sockClient.ReceiveAsync(e))
                    SocketReceiveEventCompleted(sender, e);
            }
            catch (Exception ex)
            {
                StatusTextBox.AppendText($"Unexpected exception: {ex.Message}");
                //CommunicationStateChanging(ConnectionState.Retry);
            }
        }
        void HandleControlMessage(MessageHeader header)
        {
            var systembyte = header.SystemBytes;
            if ((byte)header.MessageType % 2 == 0)
            {
                if (_replyExpectedMsgs.TryGetValue(systembyte, out var ar))
                {
                    //ar.SetResult(ControlMessage);
                }
                else
                {
                    //_logger.Warning("Received Unexpected Control Message: " + header.MessageType);
                    return;
                }
            }
            //_logger.Info("Receive Control message: " + header.MessageType);
            //switch (header.MessageType)
            //{
            //    case MessageType.SelectRequest:
            //        //SendControlMessage(MessageType.SelectResponse, systembyte);
            //        CommunicationStateChanging(ConnectionState.Selected);
            //        break;
            //    case MessageType.SelectResponse:
            //        switch (header.F)
            //        {
            //            case 0:
            //                CommunicationStateChanging(ConnectionState.Selected);
            //                break;
            //            case 1:
            //                _logger.Error("Communication Already Active.");
            //                break;
            //            case 2:
            //                _logger.Error("Connection Not Ready.");
            //                break;
            //            case 3:
            //                _logger.Error("Connection Exhaust.");
            //                break;
            //            default:
            //                _logger.Error("Connection Status Is Unknown.");
            //                break;
            //        }
            //        break;
            //    case MessageType.LinkTestRequest:
            //        SendControlMessage(MessageType.LinkTestResponse, systembyte);
            //        break;
            //    case MessageType.SeperateRequest:
            //        CommunicationStateChanging(ConnectionState.Retry);
            //        break;
            //}
        }

        void HandleDataMessage(MessageHeader header, SecsMessage msg)
        {
            var systembyte = header.SystemBytes;
            if (msg != null)
            {
                StreamTextBox.Text = msg.S.ToString();
                FunctionTextBox.Text = msg.F.ToString();
                MessageTextBox.Text = msg.ToString();
            }
            //if (header.DeviceId != DeviceId && msg.S != 9 && msg.F != 1)
            //{
            //    resu.MessageIn(msg, systembyte);
            //    _logger.Warning("Received Unrecognized Device Id Message");
            //    SendDataMessageAsync(new SecsMessage(9, 1, false, "Unrecognized Device Id", Item.B(header.EncodeTo(new byte[10]))), NewSystemId);
            //    return;
            //}

            //if (msg.F % 2 != 0)
            //{
            //    if (msg.S != 9)
            //    {
            //        //Primary message
            //        _logger.MessageIn(msg, systembyte);
            //        _taskFactory.StartNew(
            //            wrapper => PrimaryMessageReceived(this, Unsafe.As<PrimaryMessageWrapper>(wrapper)),
            //            new PrimaryMessageWrapper(this, header, msg));

            //        return;
            //    }
            //    // Error message
            //    var headerBytes = msg.SecsItem.GetValues<byte>();
            //    systembyte = BitConverter.ToInt32(new[] { headerBytes[9], headerBytes[8], headerBytes[7], headerBytes[6] }, 0);
            //}

            //// Secondary message
            //_logger.MessageIn(msg, systembyte);
            //if (_replyExpectedMsgs.TryGetValue(systembyte, out var ar))
            //    ar.HandleReplyMessage(msg);
        }
        private void chatMsgReceivedEventHandler(object sender, string msg)
        {
            int id = Thread.CurrentThread.ManagedThreadId;
            SecsMessage cMsg = getChatMsgFromJsonStr(msg);
            if(cMsg != null)
            {
                StreamTextBox.Text = cMsg.S.ToString();
                FunctionTextBox.Text = cMsg.F.ToString();
                MessageTextBox.Text = cMsg.ToString();
            }
            else
            {
                //MessageBox.Show("event received, but no secs message.");
            }
           
        }

        public SecsMessage getChatMsgFromJsonStr(string jsonStr)
        {
            SecsMessage sMsg = null;
            try
            {
                sMsg = Serializer.Deserialize<SecsMessage>(jsonStr);
                
            }
            catch (Exception ex)
            {

            }

            return sMsg;
        }
        public int sendMessage(string strMsg)
        {
            int result = -1;
            //string strMsg = IDText.Text.Trim() + "," + PWText.Text.Trim();
            byte[] arrMsg = System.Text.Encoding.UTF8.GetBytes(strMsg);
            //byte[] arrSendMsg = new byte[arrMsg.Length];
            //arrSendMsg[0] = type; // 用来登录  
            //Buffer.BlockCopy(arrMsg, 0, arrSendMsg, 1, arrMsg.Length);
            if (sockClient != null)
            {
                result = sockClient.Send(arrMsg); // 发送消息；  
            }
            return result;

        }
        
        private void StartButton_Click(object sender, EventArgs e)
        {
            string IP = IPTextBox.Text.Trim();
            string Port = PortTextBox.Text.Trim();
            string IP2 = IP2TextBox.Text.Trim();
            string Port2 = Port2TextBox.Text.Trim();
            connectToTCPServer(IP, Port, IP2, Port2);
          
        }



        

        void recieveArgs_Completed(object sender, SocketAsyncEventArgs e)
        {
            var are = (AutoResetEvent)e.UserToken;
            are.Set();
        }


        ushort DeviceId = 1;
        private readonly ConcurrentDictionary<int, TaskCompletionSourceToken> _replyExpectedMsgs = new ConcurrentDictionary<int, TaskCompletionSourceToken>();
        private Task<SecsMessage> SendDataMessageAsync(SecsMessage msg, int systembyte)
        {
            

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
            foreach(Socket socket in socketClientList)
            {
                socket.Send(eap.BufferList.ToArray(), SocketFlags.None);
            }
            
            
            //if (!sockClient.SendAsync(eap))
            //    SendDataMessageCompleteHandler(sockClient, eap);

            return token.Task;
        }
        private void SendDataMessageCompleteHandler(object socket, SocketAsyncEventArgs e)
        {
            var completeToken = Unsafe.As<TaskCompletionSourceToken>(e.UserToken);

            if (e.SocketError != SocketError.Success)
            {
                completeToken.SetException(new SocketException((int)e.SocketError));
                
                return;
            }

            
        }
        private readonly SystemByteGenerator _systemByte = new SystemByteGenerator();
        internal int NewSystemId => _systemByte.New();
        public SecsGem secsGem;
        private void EstablishCommButton_Click(object sender, EventArgs e)
        {
            //List<ArraySegment<byte>> recvBuffers =
            //            new List<ArraySegment<byte>>(2);
            //byte[] bigBuffer = new byte[1024];

            //// Specify the first buffer segment (2 bytes, starting 
            //// at the 4th element of bigBuffer)
            //recvBuffers.Add(new ArraySegment<byte>
            //                        (bigBuffer, 4, 2));

            //// Specify the second buffer segment (500 bytes, starting
            //// at the 20th element of bigBuffer)
            //recvBuffers.Add(new ArraySegment<byte>
            //                        (bigBuffer, 20, 500));

            //sockClient.BeginReceive(recvBuffers, SocketFlags.Partial, new AsyncCallback((ar) =>
            //{

            //    var length = sockClient.EndReceive(ar);


            //}), null);

            SecsMessage secsMessage = new SecsMessage(1, 13, "TestCommunicationsRequest", Item.L());
            sq1.SendDataMessage(secsMessage);
            sq2.SendDataMessage(secsMessage);
            //SecsMessage secsMessage = new SecsMessage(1, 14, "TestResponse", Item.L(
            //    Item.B(00),
            //    Item.L(
            //        Item.A("FrameMounting"),
            //        Item.A("V1.0.1")
            //        )
            //    ));
            //string strMsg = Serializer.Serialize(secsMessage);
            //sendMessage(strMsg);
            //SendDataMessageAsync(secsMessage, NewSystemId);
            //var byteCount = sockClient.Receive(arrMsgRec, 0, sockClient.Available,
            //                    SocketFlags.None);

            ////_secsDecoder.Decode(byteCount);
            //StatusTextBox.AppendText($"received count: {byteCount}. \n");
        }

        private void RequestOnlineButton_Click(object sender, EventArgs e)
        {
            SecsMessage secsMessage = new SecsMessage(1, 17, "RequestOnline", Item.L());
            SendDataMessageAsync(secsMessage, NewSystemId);
        }

        private void DeleteAllReportsButton_Click(object sender, EventArgs e)
        {

        }

        private void DataReceivedHandler(object sender, SecsMessage msg)
        {
            StreamTextBox.Text = msg.S.ToString();
            FunctionTextBox.Text = msg.F.ToString();
            StatusTextBox.AppendText("get msg header for device 0.\n");
            MessageTextBox.Text = msg.ToString();
            MessageTextBox.AppendText("\n");
            MessageTextBox.AppendText(msg.SecsItem.ToString());
            StatusTextBox.AppendText("get msg data for device 0.\n");
            if(msg.S == 6 && msg.F == 11)
            {

            }
        }
        private void Data2ReceivedHandler(object sender, SecsMessage msg)
        {
            Stream2TextBox.Text = msg.S.ToString();
            Function2TextBox.Text = msg.F.ToString();
            StatusTextBox.AppendText("get msg header for device 0.\n");
            Message2TextBox.Text = msg.ToString();
            Message2TextBox.AppendText("\n");
            Message2TextBox.AppendText(msg.SecsItem.ToString());
            StatusTextBox.AppendText("get msg data for device 0.\n");
        }

        private void ConnectedHandler(object sender, EventArgs e)
        {
            StatusTextBox.AppendText("device 0 connected.\n");
        }

        private void Connected2Handler(object sender, EventArgs e)
        {
            StatusTextBox.AppendText("device 1 connected.\n");
        }
    }
}
