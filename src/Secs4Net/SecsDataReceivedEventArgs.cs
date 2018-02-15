using SIAPM.Entities.Lines;
using System;
using System.Collections.Generic;
using System.Text;

namespace Secs4Net
{
    public class SecsDataReceivedEventArgs: EventArgs
    {
        public SecsMessage SecsMessage { get; private set; }
        public SCESEquipment SCESEquipment { get; private set; }

        public SecsDataReceivedEventArgs(SecsMessage secsMessage, SCESEquipment sCESEquipment)
        {
            SecsMessage = secsMessage;
            SCESEquipment = sCESEquipment;
        }
    }
}
