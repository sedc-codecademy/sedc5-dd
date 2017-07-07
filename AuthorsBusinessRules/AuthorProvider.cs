using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AuthorEntities2;
using AuthorsDataAccess2;

namespace AuthorsBusinessRules
{
    public class AuthorProvider : IAuthorProvider
    {
        private IAuthorRepository authorRepo;

        public AuthorProvider(IAuthorRepository authorRepo)
        {
            this.authorRepo = authorRepo;
        }

        public Author ChangeName(Author author, string newName)
        {
            throw new NotImplementedException();
        }

        public Author CreateAuthor(string name, DateTime? birthDate = null, DateTime? deathDate = null)
        {
            return authorRepo.AddAuthor(name, birthDate, deathDate);
        }

        public bool DeleteAuthor(Author author)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Author> GetAuthors(string nameFragment = "")
        {
            if (string.IsNullOrEmpty(nameFragment))
            {
                return authorRepo.GetAllAuthors();
            } 
            else
            {
                return authorRepo.GetAuthorsByName(nameFragment);
            }
        }

        public Author RecordDeath(Author author, DateTime deathDate)
        {
            var oldDeathDay = author.DeathDay;

            try
            {
                author.DeathDay = deathDate;
                authorRepo.UpdateAuthor(author);
            }
            catch
            {
                author.DeathDay = oldDeathDay;
                throw;
            }
            return author;
        }
    }
}
