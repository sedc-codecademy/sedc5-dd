using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AuthorEntities2.ViewModels
{
    public class AuthorListViewModel
    {
        private AuthorListViewModel() { }

        public int ID { get; set; }
        public string Name { get; set; }
        public bool IsDead { get; set; }
        public int NovelsCount { get; set; }

        public static AuthorListViewModel FromAuthor(Author author)
        {
            return new AuthorListViewModel
            {
                ID = author.Id,
                Name = author.Name,
                IsDead = author.DeathDay != null,
                NovelsCount = author.Novels == null ? -1 : author.Novels.Count
            };
        }
    }
}
