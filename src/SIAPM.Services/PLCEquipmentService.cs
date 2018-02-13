using SIAPM.Entities.Lines;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace SIAPM.Services
{
    public class PLCEquipmentService: Service<PLCEquipment>
    {
        
        public PLCEquipmentService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }

        public override IQueryable<PLCEquipment> Query(Expression<Func<PLCEquipment, bool>> query)
        {
            return _sIAPMContext.PLCEquipments.Where(query);
        }
    }
}
