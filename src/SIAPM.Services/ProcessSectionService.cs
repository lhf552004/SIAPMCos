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
    public class ProcessSectionService : Service<ProcessSection>
    {
        
        public ProcessSectionService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }
        public override IQueryable<ProcessSection> Query(Expression<Func<ProcessSection, bool>> query)
        {
            return _sIAPMContext.ProcessSections.Where(query);
        }

    }
}
