using DataAccessG1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookEntitiesG1;

namespace BusinessLogicTests.Fakes
{
    class FakeAuthorRepository : IAuthorRepository
    {
        private List<Author> authors;

        public bool GetAllAuthorsCalled { get; set; }
        public bool GetAuthorsByNameCalled { get; set; }

        public FakeAuthorRepository()
        {
            authors = InitAuthors();
            GetAllAuthorsCalled = false;
            GetAuthorsByNameCalled = false;
        }

        private List<Author> InitAuthors()
        {
            return new List<Author>
            {
                new Author {Id = 1, Name = "Arthur Clarke"},
                new Author {Id = 2, Name = "Arthur 2"},
                new Author {Id = 3, Name = "Arthur 3"}
            };
        }

        public Author CreateAuthor(string name, DateTime? dateOfBirth = null, DateTime? dateOfDeath = null)
        {
            if (GetAuthorsByName(name).Any(a => a.Name == name))
            {
                throw new ArgumentException($"Author with name {name} already exists");
            }

            int authorId = authors.Max(a => a.Id) + 1;
            authors.Add(new Author { Id = authorId, Name = name, BirthDate = dateOfBirth, DeathDate = dateOfDeath });
            return GetAuthorById(authorId);
        }

        public bool DeleteAuthor(Author author)
        {
            int deletedCount = authors.RemoveAll(a => a.Id == author.Id);
            return deletedCount == 1;
        }

        public IEnumerable<Author> GetAllAuthors()
        {
            GetAllAuthorsCalled = true;
            return authors;
        }

        public Author GetAuthorById(int id)
        {
            return authors.Single(a => a.Id == id);
        }

        public IEnumerable<Author> GetAuthorsByName(string nameFragment)
        {
            GetAuthorsByNameCalled = true;
            return authors.Where(a => a.Name.Contains(nameFragment));
        }

        public Author UpdateAuthor(Author author)
        {
            var listAuthor = authors.Single(a => a.Id == author.Id);
            listAuthor.Name = author.Name;
            listAuthor.BirthDate = author.BirthDate;
            listAuthor.DeathDate = author.DeathDate;

            return GetAuthorById(author.Id);
        }
    }
}
