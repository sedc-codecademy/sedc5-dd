using EntityDemoModelsG1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnityConsoleG1
{
    class Program
    {
        static void Main(string[] args)
        {
            BooksContext context = new BooksContext();
            foreach(var author in context.Authors)
            {
                Console.WriteLine(author);
            }
        }
    }
}
