using System;
using System.Collections.Generic;
using System.Linq;

namespace AppPodCloud.Helpers
{
    public class ConstConfig
    {
        public const string ACTION = "action";
        public const string ACTIVITY = "activity";
        public const string USERAWARD = "useraward";
        public const string TEMPTATE = "template";
        public const string GAME = "game";
        public const string PLATHOST = "http://game.troncell.com";

        public const string USERINFOSCOPE = "snsapi_userinfo";
        public const string BASESCOPE = "snsapi_base";
        public const string Weixin_Award_Template_Short_ID = "OPENTM204632492";


        /// <summary>
        /// 平台天气路径
        /// </summary>
        public const string Common_Weather_Path = "uploads/Common/Weather/";

        /// <summary>
        /// {0} groupid
        /// </summary>
        public const string Customer_Holiday_Path = "uploads/Customer/{0}/Holiday/";


        /// <summary>
        /// {0} groupid
        /// </summary>
        public const string Customer_Sale_Path = "uploads/Customer/{0}/Sale/";
        /// <summary>
        /// {0} groupid
        /// {1} gameid
        /// </summary>
        public const string Customer_Game_Path = "uploads/Customer/{0}/Game/{1}/";

        public const string Customer_Device_Heatmap_Path = "uploads/Customer/{0}/Device/{1}/";

        /// <summary>
        /// {0} groupid
        /// {1} Activityid
        /// </summary>
        public const string Customer_Activity_Path = "uploads/Customer/{0}/Activity/{1}/";

        /// <summary>
        /// {0} groupid
        /// {1} Activityid
        /// {2} Awardid
        /// </summary>
        public const string Customer_Activity_Award_Path = "uploads/Customer/{0}/Activity/{1}/Award/{2}/";

        /// <summary>
        /// {0} groupid
        /// {1} userid
        /// </summary>
        public const string Customer_User_Path = "uploads/Customer/{0}/User/{1}/";

        /// <summary>
        /// {0} groupid
        /// </summary>
        public const string Customer_Group_Path = @"uploads/Customer/{0}/";


        /// <summary>
        /// {0} groupid
        /// </summary>
        public const string Customer_Group_Ads = Customer_Group_Path + @"Ads/";


        /// <summary>
        /// {0} groupid
        /// </summary>
        public const string Customer_Group_Things = Customer_Group_Path + @"Things/";

        /// <summary>
        /// {0} groupid
        /// </summary>
        public const string Customer_Group_Zips = Customer_Group_Path + @"Zips/";

        /// <summary>
        /// 平台图片路径，与用户无关 .html模板
        /// {0} htmltemplateid
        /// </summary>
        public const string Common_HtmlTemplate_Path = "uploads/Common/HtmlTemplate/{0}/";

        /// <summary>
        /// 平台图片路径，与用户无关 游戏图片
        /// </summary>
        public const string Common_Softwares_Path = "/uploads/Common/Softwares/";

        public const string Common_Ads_Path = "/uploads/Common/Ads/";

        /// <summary>
        /// 平台图片路径，与用户无关 通用设置
        /// </summary>
        public const string Common_Setting_Path = "/uploads/Common/Setting/";

        /// <summary>
        /// 默认分享时的小图标
        /// </summary>
        public const string Common_Share_Image = "/Content/img/shareDefault.png";

        /// <summary>
        /// 默认图文消息里的图片
        /// </summary>
        public const string Common_News_Image = "/Content/img/newsDefault.png";

        /// <summary>
        /// 默认中奖图文消息里的图片
        /// </summary>
        public const string Common_Award_News_Image = "/Content/img/awardNewsDefault.jpg";

        public const string Customer_TempFiles_Path = "TempData/GroupId_{0}";

        public const string Customer_ZipExtract_Path = "TempData/ZipExtract/GroupId_{0}";

        public const string Customer_Email_Template = "downloads/Common/Email/Template/Thing.html";
        public const string GameSuppotUserWarningMessage = "啊呀，好像您扫的慢了，请稍后等待下一轮吧";

        public const int DeviceTag = 1;
        public const int HCounterTag = 2;
        public const int GroupTag = 4;

        public const int MaxItemSizePerPage = 1000;
        public const int ItemSizePerPage = 20;

        public static string[] ReportColors = new string[10] { "#A0522D", "#9932CC", "#8470FF", "#66CD00", "#2E8B57", "#0000EE", "#FFD700", "#FFA07A", "#FF0000", "#9E9E9E" };

        //同步时忽略同步的字段
        public const string IgnoreProductPicUrl = "PicUrl";
        public const string IgnoreProductTitle = "Title";
    }
}