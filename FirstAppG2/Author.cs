using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstAppG2
{
    class Author : IDisposable
    {
        public void Dispose()
        {
            Console.WriteLine("I'm being disposed");
        }
    }
}
