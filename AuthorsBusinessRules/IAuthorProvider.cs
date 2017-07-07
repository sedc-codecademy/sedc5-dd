using AuthorEntities2;
using System;
using System.Collections.Generic;

namespace AuthorsBusinessRules
{
    public interface IAuthorProvider
    {
        Author CreateAuthor(string name, DateTime? birthDate = null, DateTime? deathDate = null);
        Author ChangeName(Author author, string newName);
        Author RecordDeath(Author author, DateTime deathDate);

        bool DeleteAuthor(Author author);

        IEnumerable<Author> GetAuthors(string nameFragment = "");
    }
}