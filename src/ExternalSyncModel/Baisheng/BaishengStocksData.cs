using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Baisheng
{
    public class BaishengStocksData
    {
        public Page page { get; set; }
        public BaishengStocklistget[] stockListGet { get; set; }
    }

    public class BaishengStocklistget
    {
        public string sku { get; set; }
        public string sl { get; set; }
        public string sl2 { get; set; }
        public string kysl { get; set; }
        public string warehouseCode { get; set; }
        public string lastchanged { get; set; }
    }
}
