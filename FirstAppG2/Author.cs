using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstAppG2
{
    class Author
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime? BirthDay { get; set; }
        public DateTime? DeathDay { get; set; }

        public override string ToString()
        {
            return $"#{Id}: {Name} ({BirthDay} - {DeathDay})";
        }
    }
}
