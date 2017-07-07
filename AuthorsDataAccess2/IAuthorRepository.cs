using AuthorEntities2;
using System;
using System.Collections.Generic;

namespace AuthorsDataAccess2
{
    public interface IAuthorRepository
    {
        Author AddAuthor(string name, DateTime? dateOfBirth, DateTime? dateOfDeath);
        Author UpdateAuthor(Author author);
        bool DeleteAuthor(int authorId);

        IEnumerable<Author> GetAllAuthors();
        IEnumerable<Author> GetAuthorsByName(string nameFragment);
        Author GetAuthorById(int authorId);
    }
}