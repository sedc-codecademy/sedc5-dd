using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AuthorEntities2
{
    public class Author
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime? BirthDay { get; set; }
        public DateTime? DeathDay { get; set; }

        public List<Novel> Novels { get; set; }

        public override string ToString()
        {
            return $"{Name} ({Novels.Count} novels)";
        }
    }
}
