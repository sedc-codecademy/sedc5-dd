using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityDemoModelG1
{
    public static class DbContextExtensions
    {
        public static DbQuery<T> Includes<T>(this DbQuery<T> query, params string[] paths)
        {
            var result = query;
            foreach (var path in paths)
            {
                result = result.Include(path);
            }
            return result;
        }
    }
}
