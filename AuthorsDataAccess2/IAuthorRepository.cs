using AuthorEntities2;
using System;
using System.Collections.Generic;

namespace AuthorsDataAccess2
{
    public interface IAuthorRepository
    {
        Author AddAuthor(string name, DateTime? dateOfBirth = null, DateTime? dateOfDeath = null);
        Author UpdateAuthor(Author author);
        bool DeleteAuthor(int authorId);

        IEnumerable<Author> GetAllAuthors(ref int counter);
        IEnumerable<Author> GetAuthorsByName(string nameFragment);
        Author GetAuthorById(int authorId);
    }
}