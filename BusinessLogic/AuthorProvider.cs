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
        private IAuthorRepository authorRepo;
        private INovelRepository novelRepo;

        public AuthorProvider(IAuthorRepository authorRepo, INovelRepository novelRepo)
        {
            this.authorRepo = authorRepo;
            this.novelRepo = novelRepo;
        }

        public bool DeleteAuthor(Author author)
        {
            return authorRepo.DeleteAuthor(author);
        }

        public IEnumerable<Author> GetAuthors(string nameFragment = "")
        {
            IEnumerable<Author> authors;
            if (string.IsNullOrEmpty(nameFragment))
            {
                authors = authorRepo.GetAllAuthors();
            }
            else
            {
                authors = authorRepo.GetAuthorsByName(nameFragment);
            }

            foreach (var author in authors)
            {
                author.Novels = novelRepo.GetNovelsByAuthor(author.Id);
                foreach (var novel in author.Novels)
                {
                    novel.Author = author;
                }
            }
            return authors;
        }

        public Author GetNovels(Author author)
        {
            author.Novels = novelRepo.GetNovelsByAuthor(author.Id);
            foreach (var novel in author.Novels)
            {
                novel.Author = author;
            }
            return author;
            
        }

        public Author RecordDeath(Author author, DateTime dateOfDeath)
        {
            author.DeathDate = dateOfDeath;
            return authorRepo.UpdateAuthor(author);
        }
    }
}
