using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityDemoModelG1
{
    public class Human
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public int? FatherID { get; set; }
        public int? MotherID { get; set; }

        public virtual Human Father { get; set; }
        public virtual Human Mother { get; set; }

        public override string ToString()
        {
            return $@"
{ID}: {Name}
   F: {Father}
   M: {Mother}
";
        }
    }
}
