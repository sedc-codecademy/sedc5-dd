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
        private INovelRepository novelRepo;

        public static int Counter = 0;

        public AuthorProvider(IAuthorRepository authorRepo, INovelRepository novelRepo)
        {
            this.authorRepo = authorRepo;
            this.novelRepo = novelRepo;
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

        public IEnumerable<Author> GetAuthors(bool includeNovels, string nameFragment = "")
        {
            IEnumerable<Author> authors;
            if (string.IsNullOrEmpty(nameFragment))
            {
                authors = authorRepo.GetAllAuthors(ref Counter);
            } 
            else
            {
                authors = authorRepo.GetAuthorsByName(nameFragment);
            }

            if (includeNovels)
            {
                var allNovels = novelRepo.GetAllNovels(ref Counter);
                foreach (var author in authors)
                {
                    author.Novels = allNovels.Where(n => n.AuthorID == author.Id).ToList();
                    foreach (var novel in author.Novels)
                    {
                        novel.Author = author;
                    }
                }
            }
            return authors;
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
