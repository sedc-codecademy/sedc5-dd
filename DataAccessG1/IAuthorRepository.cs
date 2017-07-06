using BookEntitiesG1;
using System;
using System.Collections.Generic;

namespace DataAccessG1
{
    public interface IAuthorRepository
    {
        Author CreateAuthor(string name, DateTime? dateOfBirth, DateTime? dateOfDeath);
        IEnumerable<Author> GetAllAuthors();
        IEnumerable<Author> GetAuthorsByName(string nameFragment);
        Author GetAuthorById(int id);
        bool DeleteAuthor(Author author);
        Author UpdateAuthor(Author author);
    }
}