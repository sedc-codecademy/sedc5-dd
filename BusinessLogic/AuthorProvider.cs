using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookEntitiesG1;
using DataAccessG1;

namespace BusinessLogic
{
    public class AuthorProvider : IAuthorProvider
    {
        private IAuthorRepository repo;

        public AuthorProvider(IAuthorRepository repo)
        {
            this.repo = repo;
        }

        public bool DeleteAuthor(Author author)
        {
            return repo.DeleteAuthor(author);
        }

        public IEnumerable<Author> GetAuthors(string nameFragment = "")
        {
            if (string.IsNullOrEmpty(nameFragment))
            {
                return repo.GetAllAuthors();
            }
            else
            {
                return repo.GetAuthorsByName(nameFragment);
            }
        }

        public Author RecordDeath(Author author, DateTime dateOfDeath)
        {
            author.DeathDate = dateOfDeath;
            return repo.UpdateAuthor(author);
        }
    }
}
