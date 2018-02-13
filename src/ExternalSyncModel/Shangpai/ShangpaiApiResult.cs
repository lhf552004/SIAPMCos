using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Shangpai
{
    public class ShangpaiApiResult<T>
    {
        public string rsp { get; set; }
        public string res { get; set; }
        public T data { get; set; }
        public int totalResults { get; set; }
    }
}
