using SIAPM.Entities.CentralConfig;
using SIAPM.Entities.Lines;
using SIAPM.Entities.Plants;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace SIAPM.Services
{
    public class CentralConfigService : Service<CentralConfig>
    {
        
        public CentralConfigService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }
        public override IQueryable<CentralConfig> Query(Expression<Func<CentralConfig, bool>> query)
        {
            return _sIAPMContext.CentralConfigs.Where(query);
        }

    }
}
