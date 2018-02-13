using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Baisheng
{
    public class BaishengCategorysData
    {
        public Page page { get; set; }
        public BaishengCatlistget[] catListGet { get; set; }
    }

    public class BaishengCatlistget
    {
        public string catCode { get; set; }
        public string catName { get; set; }
        public string catNote { get; set; }
        public string pcatCode { get; set; }
        public string pcatName { get; set; }
        public string modified { get; set; }
    }

}
