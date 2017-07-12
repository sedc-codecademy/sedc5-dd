using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace G2EntityDemoModels
{
    public class Subject
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Group> Groups { get; set; }
    }
}
