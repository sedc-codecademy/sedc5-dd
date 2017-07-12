using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace G2EntityDemoModels
{
    public class Human
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int? FatherID { get; set; }
        public int? MotherID { get; set; }

        public virtual Human Daddy { get; set; }
        public virtual Human Mommy { get; set; }

        public override string ToString()
        {
            return $"{Name} - {Mommy} - {Daddy}";
        }

    }
}
