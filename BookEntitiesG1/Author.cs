using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookEntitiesG1
{
    public class Author
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime? BirthDate { get; set; }
        public DateTime? DeathDate { get; set; }

        public override string ToString()
        {
            if (BirthDate == null)
            {
                return $"#{Id}: {Name}";
            }
            else
            {
                return $"#{Id}: {Name} ({BirthDate} - {DeathDate})";
            }

        }
    }
}
