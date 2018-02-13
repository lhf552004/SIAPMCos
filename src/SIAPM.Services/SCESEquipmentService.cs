using SIAPM.Entities.Lines;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace SIAPM.Services
{
    public class SCESEquipmentService: Service<SCESEquipment>
    {
        
        public SCESEquipmentService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }

        public override IQueryable<SCESEquipment> Query(Expression<Func<SCESEquipment, bool>> query)
        {
            return _sIAPMContext.SCESEquipments.Where(query);
        }
    }
}
