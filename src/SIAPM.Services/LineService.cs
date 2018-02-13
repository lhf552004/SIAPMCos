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
    public class LineService: Service<Line>
    {
        
        public LineService(SIAPMContext sIAPMContext): base(sIAPMContext)
        {

        }
        public override IQueryable<Line> Query(Expression<Func<Line, bool>> query)
        {
            return _sIAPMContext.Lines.Where(query);
        }

    }
}
