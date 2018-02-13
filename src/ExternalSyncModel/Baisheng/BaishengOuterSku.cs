using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Baisheng
{


    public class BaishengOuterSkuData
    {
        public Page page { get; set; }
        public BaishengOuterskulistget[] outerSkuListGet { get; set; }
    }


    public class BaishengOuterskulistget
    {
        public string lylx { get; set; }
        public string goods_sku { get; set; }
        public string goods_barcode { get; set; }
        public string outer_goods_id { get; set; }
        public string outer_goods_sku_id { get; set; }
        public string outer_goods_name { get; set; }
        public string outer_goods_url { get; set; }
        public string outer_goods_je { get; set; }
        public string outer_goods_sl { get; set; }
        public string outer_goods_sku { get; set; }
        public string outer_goods_sku_name { get; set; }
    }

}
