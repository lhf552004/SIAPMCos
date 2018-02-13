using SIAPM.Entities.Lines;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace SIAPM.Services
{
    public class EquipmentService: Service<Equipment>
    {
        
        public EquipmentService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }

        public override IQueryable<Equipment> Query(Expression<Func<Equipment, bool>> query)
        {
            return _sIAPMContext.Equipments.Where(query);
        }
    }
}
