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

        public int ID { get; private set; }
        public string Name { get; private set; }
        public bool IsDead { get; private set; }
        public int NovelsCount { get; private set; }

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
