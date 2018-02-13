using Secs4Net;
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
    public partial class Test : Form
    {
        public Test()
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
                    StreamTextBox.Text = _msgHeader.S.ToString();
                    FunctionTextBox.Text = _msgHeader.F.ToString();
                    StatusTextBox.AppendText("get msg header.\n");
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
                        MessageTextBox.Text = _msg.ToString();
                        MessageTextBox.AppendText("\n");
                        MessageTextBox.AppendText(_msg.SecsItem.ToString());
                        StatusTextBox.AppendText("get msg data.\n");
                    }
                }
            }
           

        }
        
        public void connectToTCPServer(string ServerIP, string ServerPort)
        {

            //IPAddress ip = IPAddress.Parse(ServerIP);
            //IPEndPoint endPoint = new IPEndPoint(ip, int.Parse(ServerPort));
            //sockClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            //try
            //{
            //    StatusTextBox.AppendText("connecting...\n");
            //    //ShowMsg("与服务器连接中……");
            //    sockClient.Connect(endPoint);
            //    _isConnectToTCPServer = true;
            //}
            //catch (SocketException se)
            //{
            //    MessageBox.Show(se.Message);
            //    return _isConnectToTCPServer;
            //    //this.Close();  
            //}
            //StatusTextBox.AppendText("connected\n");
            ////ShowMsg("与服务器连接成功！！！");
            //threadClient = new Thread(recMsg);
            //threadClient.IsBackground = true;
            //threadClient.Start();
            //return _isConnectToTCPServer;

            StatusTextBox.AppendText("connecting...\n");
            IPAddress ip = IPAddress.Parse(ServerIP);
            IPEndPoint endPoint = new IPEndPoint(ip, int.Parse(ServerPort));
            sockClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            sockClient.Connect(endPoint);
            StatusTextBox.AppendText("connected.\n");




            arrMsgRec = new byte[DecoderBufferSize];

            //var readEvent = new AutoResetEvent(false);
            //var totalRecieved = 0;

            var receiveCompleteEvent = new SocketAsyncEventArgs();
            receiveCompleteEvent.SetBuffer(arrMsgRec, 0, arrMsgRec.Length);
            receiveCompleteEvent.Completed += SocketReceiveEventCompleted;

            if (!sockClient.ReceiveAsync(receiveCompleteEvent))
            {

                SocketReceiveEventCompleted(sockClient, receiveCompleteEvent);
            }



            //_startImpl = async () =>
            //{
            //    var connected = false;
            //    do
            //    {

            //        try
            //        {

            //            //sockClient = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            //            //SocketAsyncEventArgs e = new SocketAsyncEventArgs();
            //            //IPEndPoint ipEnd = new IPEndPoint(IPAddress.Parse(ServerIP), int.Parse(ServerPort));
            //            //e.RemoteEndPoint = ipEnd;
            //            //e.UserToken = sockClient;
            //            //e.Completed += new EventHandler<SocketAsyncEventArgs>(e_Completed);
            //            //Console.WriteLine("Trying to connect to : " + ipEnd);
            //            //sockClient.ConnectAsync(e);





            //        }
            //        catch (Exception ex)
            //        {

            //        }
            //    } while (!connected);

            //    // hook receive event first, because no message will received before 'SelectRequest' send to device

            //};
            //Start();

        }

        private void recMsg()
        {
            while (true)
            {
                // 定义一个2M的缓存区；
                
               
                
                // 将接受到的数据存入到输入  arrMsgRec中；  
                int length = -1;
                try
                {
                    var receiveCompleteEvent = new SocketAsyncEventArgs();
                    receiveCompleteEvent.SetBuffer(arrMsgRec, 0, arrMsgRec.Length);
                    //receiveCompleteEvent.Completed += SocketReceiveEventCompleted;

                    if (!sockClient.ReceiveAsync(receiveCompleteEvent))
                    {

                        SocketReceiveEventCompleted(sockClient, receiveCompleteEvent);
                    }


                    //length = sockClient.Receive(arrMsgRec); // 接收数据，并返回数据的长度；  
                    //var _msgHeader = MessageHeader.Decode(arrMsgRec, 0);
                }
                catch (SocketException se)
                {
                    MessageBox.Show("Se异常；" + se.Message);
                    return;
                }
                catch (Exception e)
                {
                    MessageBox.Show("异常：" + e.Message);
                    return;
                }
                //string strMsg = System.Text.Encoding.UTF8.GetString(arrMsgRec);// 将接受到的字节数据转化成字符串；  
                //ChatMsgReceivedEvent(sockClient, strMsg);
                //if (arrMsgRec[0] == 0) // 表示接收到的是消息数据；  
                //{
                //    string strMsg = System.Text.Encoding.UTF8.GetString(arrMsgRec, 1, length - 1);// 将接受到的字节数据转化成字符串；  
                //    ChatMsgReceivedEvent(sockClient, strMsg);
                //    //ShowMsg(strMsg);
                //}
              
            }
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
            connectToTCPServer(IP, Port);
          
        }



        private byte[] ReadBySize(int size = 4)
        {
            var readEvent = new AutoResetEvent(false);
            var buffer = new byte[size]; //Receive buffer
            var totalRecieved = 0;
            do
            {
                var recieveArgs = new SocketAsyncEventArgs()
                {
                    UserToken = readEvent
                };
                recieveArgs.SetBuffer(buffer, totalRecieved, size - totalRecieved);//Receive bytes from x to total - x, x is the number of bytes already recieved
                recieveArgs.Completed += recieveArgs_Completed;
                sockClient.ReceiveAsync(recieveArgs);
                readEvent.WaitOne();//Wait for recieve

                if (recieveArgs.BytesTransferred == 0)//If now bytes are recieved then there is an error
                {
                    if (recieveArgs.SocketError != SocketError.Success)
                    {
                        StatusTextBox.AppendText($"SocketError:{recieveArgs.SocketError}");
                    }
                        //throw new ReadException(ReadExceptionCode.UnexpectedDisconnect, "Unexpected Disconnect");
                    //throw new ReadException(ReadExceptionCode.DisconnectGracefully);
                }
                totalRecieved += recieveArgs.BytesTransferred;

            } while (totalRecieved != size);//Check if all bytes has been received
            return buffer;
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
            sockClient.Send(eap.BufferList.ToArray(),SocketFlags.None);
            
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
            
            //SecsMessage secsMessage = new SecsMessage(1, 14, "TestResponse", Item.L(
            //    Item.B(00),
            //    Item.L(
            //        Item.A("FrameMounting"),
            //        Item.A("V1.0.1")
            //        )
            //    ));
            //string strMsg = Serializer.Serialize(secsMessage);
            //sendMessage(strMsg);
            SendDataMessageAsync(secsMessage, NewSystemId);
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
    }
}
