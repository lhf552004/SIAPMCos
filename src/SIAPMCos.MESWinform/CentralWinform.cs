using Secs4Net;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Secs4Net.Sml;
using System.Collections.Concurrent;
using System.Threading;

namespace SIAPM.MESWinform
{
    public partial class CentralWinform : Form
    {
        private bool hasSentS1F3 = false;
        private SecsGem _secsGem;
        public CentralWinform()
        {
            InitializeComponent();
            IPAddress address = IPAddress.Parse("10.215.0.2");
            _secsGem = new SecsGem(
                true,
                address,
                5005)
            {
                DeviceId = 0,
                LinkTestInterval = 60000,
                T3 = 120,
                T5 = 30,
                T6 = 5,
                T7 = 100,
                T8 = 5,
                Logger = null
            };
            _secsGem.ConnectionChanged += delegate
            {

                Invoke((MethodInvoker)delegate
                {
                    Console.WriteLine("SECS/GEM " + _secsGem.State);
                    gemStatusLabel88.Text = _secsGem.State.ToString();
                    eqpAddressStatusLabel.Text = "Device IP: " + _secsGem.DeviceIpAddress;
                    if (_secsGem.State == Secs4Net.ConnectionState.Selected && !hasSentS1F3)
                    {
                        //EstablishComm
                        //_secsGem.SendAsync(new SecsMessage(1, 13, "TestCommunicationsRequest", Item.L()));
                        //Thread.Sleep(100);

                        //Thread.Sleep(100);

                        //Thread.Sleep(100);
                        ////PurgeSpool
                        //_secsGem.SendAsync(new SecsMessage(6, 43, "PurgeSpool", Item.U1(1)));
                        //Thread.Sleep(100);
                        ////DisableAllEvents
                        //_secsGem.SendAsync(new SecsMessage(2, 37, "DisableAllEvents", Item.L(Item.Boolean(false), Item.L())));
                        ////DisableAllAlarms
                        //_secsGem.SendAsync(new SecsMessage(5, 3, "DisableAllEvents", Item.L(Item.Boolean(false), Item.L())));
                        hasSentS1F3 = true;
                    }
                        
                });
            };
            _secsGem.PrimaryMessageReceived += PrimaryMsgHandler;
            _secsGem.Start();
        }
        readonly ConcurrentDictionary<int, Action<SecsMessage>> _eventHandlers = new ConcurrentDictionary<int, Action<SecsMessage>>();
        private async void PrimaryMsgHandler(object sender, PrimaryMessageWrapper e)
        {
            try
            {
                await e.ReplyAsync(SecsMessages[e.Message.S, (byte)(e.Message.F + 1)].FirstOrDefault());
                if (_eventHandlers.TryGetValue(e.Message.GetKey(), out var handler))
                    Parallel.ForEach(handler.GetInvocationList().Cast<Action<SecsMessage>>(), h => h(e.Message));
            }
            catch (Exception ex)
            {
                Console.WriteLine("Handle Primary SECS message Error", ex);
            }
        }
        public SecsMessageList SecsMessages { get; private set; }

        private void EstablishCommButton_Click(object sender, EventArgs e)
        {
            _secsGem.SendAsync(new SecsMessage(1, 13, "TestCommunicationsRequest", Item.L()));
        }

        private void RequestOnlineButton_Click(object sender, EventArgs e)
        {
            //RequestOnline
            _secsGem.SendAsync(new SecsMessage(1, 17, "RequestOnline", Item.L()));
        }

        private void DisableSpoolingButton_Click(object sender, EventArgs e)
        {
            //DisableSpooling
            _secsGem.SendAsync(new SecsMessage(2, 43, "DisableSpooling", Item.L()));
        }

        private void PurgeSpoolButton_Click(object sender, EventArgs e)
        {
            //PurgeSpool
            _secsGem.SendAsync(new SecsMessage(6, 43, "PurgeSpool", Item.U1(1)));
        }

        private void DisableAllEventsButton_Click(object sender, EventArgs e)
        {
            //DisableAllEvents
            _secsGem.SendAsync(new SecsMessage(2, 37, "DisableAllEvents", Item.L(Item.Boolean(false), Item.L())));
        }

        private void DisableAllAlarmsButton_Click(object sender, EventArgs e)
        {
            //DisableAllAlarms
            _secsGem.SendAsync(new SecsMessage(5, 3, "DisableAllAlarms", Item.L(Item.Boolean(false), Item.L())));
        }

        private void DeleteAllReportsButton_Click(object sender, EventArgs e)
        {
            //DeleteAllReports
            _secsGem.SendAsync(new SecsMessage(2, 33, "DeleteAllReports", Item.L(Item.U4(1), Item.L())));
        }

        private void DefineAllReportsForSpecificEquipmentButton_Click(object sender, EventArgs e)
        {
            //DefineAllReportsForSpecificEquipment
            _secsGem.SendAsync(new SecsMessage(2, 33, "DeleteAllReports", Item.L(
                Item.U4(1), 
                Item.L(
                    Item.L(
                        Item.U4(14),
                        Item.L(
                            Item.A("210003")
                            )
                ),Item.L(
                        Item.U4(4),
                        Item.L(
                            Item.A("210001"),
                            Item.A("210003"),
                            Item.A("210017"),
                            Item.A("210008")
                            )
                    ),
                    Item.L(//Report:"BasePlateDotCodesReadReport"
                        Item.U4(2),
                        Item.L(
                            Item.L(
                                Item.A("210000"),
                                Item.A("210001"),
                                Item.A("210017")
                                ),
                            Item.A("210001"),
                            Item.A("210017")
                            )
                    ),
                    Item.L(//Report:"FramePickedReport"
                        Item.U4(3),
                        Item.L(
                            Item.A("210001"),
                            Item.A("210004"),
                            Item.A("210017")
                            )
                    ),
                    Item.L(//Report:"WT2CarrierPickedReport"
                        Item.U4(16),
                        Item.L(
                            Item.A("210019"),
                            Item.A("210017")
                            )
                    ),
                    Item.L(//Report:"CarrierFinishedReport"
                        Item.U4(5),
                        Item.L(
                            Item.A("210019"),
                            Item.L(
                                Item.U1(Byte.Parse("210010")),
                                Item.A("210001"),
                                Item.A("210004")
                                )
                            )
                    ),
                    Item.L(//Report:"BasePlateScrappedReport"
                        Item.U4(3),
                        Item.L(
                            Item.A("210001"),
                            Item.A("210004")
                            )
                    ),
                    Item.L(//Report:"FrameScrappedReport"
                        Item.U4(3),
                        Item.L(
                            Item.A("210017"),
                            Item.A("210004")
                            )
                    ),
                    Item.L(//Report:"FrameScrappedReport"
                        Item.U4(8),
                        Item.L(
                            Item.A("200001"),
                            Item.A("200002")
                            )
                    )
                    ))));
        }

        private void LinkEventReportsForSpecificEquipmentButton_Click(object sender, EventArgs e)
        {
            //LinkEventReportsForSpecificEquipment

        }
    }
    public sealed class SecsMessageList : ReadOnlyCollection<SecsMessage>
    {
        public SecsMessageList(string jsonFile) : base(File.OpenText(jsonFile).ToSecsMessages().ToList()) { }

        public SecsMessage this[byte s, byte f, string name] => this[s, f].First(m => m.Name == name);

        public IEnumerable<SecsMessage> this[byte s, byte f] => this.Where(m => m.S == s && m.F == f);

        public SecsMessage this[string name] => this.First(m => m.Name == name);
    }
}
