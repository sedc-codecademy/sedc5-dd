using System.Collections.Generic;

namespace DapperDemo
{
    public class Novel
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public int AuthorId { get; set; }

        public Author Author { get; set; }

        public List<Nomination> Nominations { get; set; }

        public override string ToString()
        {
            return $"#{ID}: {Title}";
        }
    }
}