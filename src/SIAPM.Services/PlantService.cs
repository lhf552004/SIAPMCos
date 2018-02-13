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
    public class PlantService: Service<Plant>
    {
        
        public PlantService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }
        public override IQueryable<Plant> Query(Expression<Func<Plant, bool>> query)
        {
            return _sIAPMContext.Plants.Where(query);
        }

    }
}
