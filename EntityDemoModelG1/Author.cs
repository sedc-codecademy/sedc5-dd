using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EntityDemoModelsG1
{
    public class Author
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public DateTime? DateOfDeath { get; set; }

        public override string ToString()
        {
            return $"#{ID}: {Name}";
        }
    }
}