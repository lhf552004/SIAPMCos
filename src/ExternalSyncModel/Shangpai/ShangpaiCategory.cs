using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Shangpai
{
    public class ShangpaiCategoryData
    {
        public ShangpaiCategory[] datas { get; set; }
        public int totalResults { get; set; }
    }
    public class ShangpaiCategory
    {
        public string cat_name { get; set; }
        public string cat_id { get; set; }
        public string pid { get; set; }
    }

}
