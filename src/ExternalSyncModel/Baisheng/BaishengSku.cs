using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Baisheng
{
    public class BaishengSkuData
    {
        public Page page { get; set; }
        public BaishengSkulistget[] skuListGet { get; set; }
    }


    public class BaishengSkulistget
    {
        public string goodsSn { get; set; }
        public string goodsName { get; set; }
        public string goodsSname { get; set; }
        public string sku { get; set; }
        public string gbBarcode { get; set; }
        public string sixNineCode { get; set; }
        public string sizeCode { get; set; }
        public string sizeName { get; set; }
        public string colorCode { get; set; }
        public string colorName { get; set; }
        public string goodsWeight { get; set; }
        public string marketPrice { get; set; }
        public string shopPrice { get; set; }
        public string ckj { get; set; }
        public string cbj { get; set; }
        public string qdtjd { get; set; }
        public string qdtjd_start_time { get; set; }
        public string qdtjd_end_time { get; set; }
        public string brandCode { get; set; }
        public string brandName { get; set; }
        public string catCode { get; set; }
        public string catName { get; set; }
        public string seasonCode { get; set; }
        public string seasonName { get; set; }
        public string seriesCode { get; set; }
        public string seriesName { get; set; }
        public string lastchanged { get; set; }
        public string created { get; set; }
        public string modified { get; set; }
        public string is_combo { get; set; }
        public string is_hs { get; set; }
        public string pb { get; set; }
        public string is_tm { get; set; }
        public string sku_id { get; set; }
        public int num { get; set; }
        public string status { get; set; }
        public string picUrl { get; set; }
    }

}
