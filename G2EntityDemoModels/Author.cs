using System;
using System.Linq;
using System.Collections.Generic;

namespace G2EntityDemoModels
{
    public class Author
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public DateTime? DateOfDeath { get; set; }

        public virtual ICollection<Novel> Novels { get; set; }

        public override string ToString()
        {
            return $"#{ID}: {Name} ({Novels.Count()} novels)";
        }
    }
}