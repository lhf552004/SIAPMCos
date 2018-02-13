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
    public class SectionService: Service<Section>
    {
        
        public SectionService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }

        public override IQueryable<Section> Query(Expression<Func<Section, bool>> query)
        {
            return _sIAPMContext.Sections.Where(query);
        }

    }
}
