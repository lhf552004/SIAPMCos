using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Shangpai
{
    public class ShangpaiProduct
    {
        public string goods_bn { get; set; }
        public string cat_id { get; set; }
        public string image_model { get; set; }
        public string goods_name { get; set; }
        public string brief { get; set; }
        public string price { get; set; }
        public string url { get; set; }
        //public ShangpaiGoodsProps goodsProps { get; set; }
    }
    public class ShangpaiProductData
    {
        public ShangpaiProduct[] goods { get; set; }
        public int totalResults { get; set; }
    }
}
