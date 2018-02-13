using Sensing.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AppPodCloud.Helpers
{
    public class LogicHelper
    {
        public static bool IsAuditOnline(AuditStatus status)
        {
            if (status == AuditStatus.Online || status == AuditStatus.OfflineAuiting || status == AuditStatus.OfflineAuditRejected) return true;
            return false;
        }
        public static bool IsAuditOffline(AuditStatus status)
        {
            if (status == AuditStatus.Offline || status == AuditStatus.OnlineAuditing || status == AuditStatus.OnlineAuditRejected) return true;
            return false;
        }
    }
}
