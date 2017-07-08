using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AuthorEntities2.ViewModels
{
    public class AuthorDetailsViewModel
    {
        public int ID { get; private set; }
        public string Name { get; private set; }
        public bool IsAlive { get; private set; }
        public string[] Novels { get; private set; }

        public static AuthorDetailsViewModel FromAuthor(Author author)
        {
            return new AuthorDetailsViewModel
            {
                ID = author.Id,
                Name = author.Name,
                // don't use different names for the same concept
                IsAlive = author.DeathDay == null,
                Novels = author.Novels == null ? null : author.Novels.Select(n => n.Title).ToArray()
            };
        }
    }
}
