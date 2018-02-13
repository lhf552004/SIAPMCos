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
    public class ProcessService: Service<Process>
    {
        
        public ProcessService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }
        public override IQueryable<Process> Query(Expression<Func<Process, bool>> query)
        {
            return _sIAPMContext.Processes.Where(query);
        }

    }
}
