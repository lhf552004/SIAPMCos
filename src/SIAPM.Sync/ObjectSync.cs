using ExternalSyncModel.Shangpai;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
namespace SIAPM.Sync
{
    public class ObjectSync<T> : BaseSync
    {
        //private const string ModifiedDateTimeFormat = "yyyy-MM-dd HH:mm:ss";
        //private const string RequestDateTimeFormat = "yyyyMMddHHmmss";
        private string getParam(Dictionary<string, string> theParams)
        {
            
            if (theParams == null && theParams.Count == 0)
            {
                return null;
            }
            string signparam = "";
            SortedDictionary<string, string> lists = new SortedDictionary<string, string>(theParams);
            foreach (var entry in lists.OrderBy(key => key.Key))
            {
                signparam = signparam + entry.Key + entry.Value;
            }

            System.Diagnostics.Debug.WriteLine(signparam);
            return signparam;
        }
        private string getTimeString()
        {
            string time = "";
            DateTime theDate = DateTime.Now;
            int year = theDate.Year;
            int month = theDate.Month;
            int day = theDate.Day;
            int hour = theDate.Hour;
            int minute = theDate.Minute;
            int second = theDate.Second;
            int minSec = theDate.Millisecond;
            time = year + month.ToString().PadLeft(2, '0') + day.ToString().PadLeft(2, '0') + hour.ToString().PadLeft(2, '0') + minute.ToString().PadLeft(2, '0') + second.ToString().PadLeft(2, '0') + minSec.ToString().PadLeft(3, '0');
            return time;
        }
        private string GetSign(string token, Dictionary<string, string> theParams)
        {
            string signFormat = getParam(theParams);      
            MD5 md5 = new MD5CryptoServiceProvider();           
            string sign = generateMD5(md5, signFormat);
            sign = sign.ToUpper() + token;
            sign = generateMD5(md5, sign).ToUpper();
            return sign;
        }
        private string generateMD5(MD5 md5, string toCalculate)
        {
            byte[] result = Encoding.Default.GetBytes(toCalculate);
            byte[] output = md5.ComputeHash(result);
            string calculated = BitConverter.ToString(output).Replace("-", "");
            return calculated;
        }
        public async Task<WebApiResult> getAll(string baseUrl, string status = "", string query = "", long pageSize = 1, long pageNo = 20)
        {
            string accessInfo = "localhost:33228";
            string method = "b2c.goods.get_tranSport";
            string direct = "true";
            string task = getTimeString();

            string sign = GetSign("", getParams(method, task, pageSize, pageNo));

            string url = baseUrl + "?status=" + status + "&query=" + query + "&page=" + pageSize + "&page=" + pageNo;
            System.Diagnostics.Debug.WriteLine(url);
            WebApiResult response = await SendRequestAsync<WebApiResult, WebApiResult>(HttpMethod.Get, url, null);
            return response;
        }
        public async Task<WebApiResult> get(string baseUrl, int id)
        {
           
            string url = "http://localhost:33228" + baseUrl + "?id=" + id;
            System.Diagnostics.Debug.WriteLine(url);
            WebApiResult response = await SendRequestAsync<WebApiResult, WebApiResult>(HttpMethod.Get, url, null);
            return response;
        }

        public async Task<WebApiResult> getByIdent(string baseUrl, string ident)
        {
            string url = "http://localhost:33228" + baseUrl + "?ident=" + ident;
            System.Diagnostics.Debug.WriteLine(url);
            WebApiResult response = await SendRequestAsync<WebApiResult, WebApiResult>(HttpMethod.Get, url, null);
            return response;
        }

        private string getAPIName()
        {
           
            //switch ()
            //{

            //}
            return "";
        }
        private Dictionary<string, string> getParams(string method, string task, long pageSize, long pageNo)
        {
            string direct = "true";
            Dictionary<string, string> theParams = new Dictionary<string, string>();
            theParams.Add("method", method);
            theParams.Add("direct", direct);  
            theParams.Add("task", task);
            theParams.Add("page_number", pageNo.ToString());
            theParams.Add("page_size", pageSize.ToString());
            return theParams;
        }
        /// <summary>
        /// cat.list.get
        /// </summary>
        /// <param name="accessInfo"></param>
        /// <param name="pageSize"></param>
        /// <param name="pageNo"></param>
        /// <returns></returns>
        //public async Task<ShangpaiApiResult<ShangpaiCategoryData>> SyncCategoryAsync(ExternalAccessTokenInfo accessInfo, long pageSize, long pageNo)
        //{
        //    string method = "b2c.goods.getAll_cat";
        //    string direct = "true";
        //    string task = getTimeString();

        //    string sign = GetSign(accessInfo.access_token, getParams(method, task, pageSize, pageNo));

        //    string url = accessInfo.Url + "?method=" + method + "&direct=" + direct + "&task=" + task + "&page_size=" + pageSize + "&page_number=" + pageNo + "&sign=" + sign;
        //    System.Diagnostics.Debug.WriteLine(url);
        //    ShangpaiApiResult<ShangpaiCategoryData> response = await SendRequestAsync<ShangpaiApiResult<ShangpaiCategoryData>, ShangpaiApiResult<ShangpaiCategoryData>>(HttpMethod.Get, url, null);
        //    return response;
        //}
    }
}
