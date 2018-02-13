using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalSyncModel.Baisheng
{
    public class BaishengApiResult<T>
    {
        public string status { get; set; }
        public string message { get; set; }
        public T data { get; set; }
    }

    public class Page
    {
        public int totalResult { get; set; }
        public int pageSize { get; set; }
        public int pageNo { get; set; }
        public int pageTotal { get; set; }
    }
}
