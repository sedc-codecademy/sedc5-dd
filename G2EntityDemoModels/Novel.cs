using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace G2EntityDemoModels
{
    public class Novel
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public int AuthorID { get; set; }

        public virtual Author Author { get; set; }

        public override string ToString()
        {
            return $"#{ID}: {Title}";
        }
    }
}
