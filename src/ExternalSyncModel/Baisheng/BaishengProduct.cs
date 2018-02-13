using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Baisheng
{


    public class BaiShengGoodsData
    {
        public Page page { get; set; }
        public BaishengGoodslistget[] goodsListGet { get; set; }
    }



    public class BaishengGoodslistget
    {
        public string goodsSn { get; set; }
        public string goodsName { get; set; }
        public object sizeRangeCode { get; set; }
        public object sizeRangeName { get; set; }
        public string brandCode { get; set; }
        public string brandName { get; set; }
        public string catCode { get; set; }
        public string catName { get; set; }
        public string topCatCode { get; set; }
        public string topCatName { get; set; }
        public string seriesCode { get; set; }
        public string seriesName { get; set; }
        public string yearCode { get; set; }
        public string yearName { get; set; }
        public string seasonCode { get; set; }
        public string seasonName { get; set; }
        public string dwCode { get; set; }
        public string dwName { get; set; }
        public string goodsWeight { get; set; }
        public string marketPrice { get; set; }
        public string shopPrice { get; set; }
        public string ckj { get; set; }
        public string cbj { get; set; }
        public string qdtjd { get; set; }
        public string qdtjd_start_time { get; set; }
        public string qdtjd_end_time { get; set; }
        public string ghsCode { get; set; }
        public string ghsName { get; set; }
        public string goodsDesc { get; set; }
        public string created { get; set; }
        public string modified { get; set; }
        public string is_delete { get; set; }
        public string goods_id { get; set; }
        public string shelf_life { get; set; }
        public string status { get; set; }
        public string picUrl { get; set; }
    }

}
