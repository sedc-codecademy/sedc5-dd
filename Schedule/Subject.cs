using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Schedule
{
    public class Subject
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public List<Group> Groups { get; set; }

        public override string ToString()
        {
            return Name;
        }
    }
}
