using G2EntityDemoModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace G2EntityConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            using (BookDbContext context = new BookDbContext())
            {
                var authors = context.Authors;
                foreach (var author in authors)
                {
                    Console.WriteLine(author);
                }
            }
        }
    }
}
