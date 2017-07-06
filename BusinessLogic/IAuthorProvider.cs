using BookEntitiesG1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public interface IAuthorProvider
    {
        IEnumerable<Author> GetAuthors(string nameFragment = "");
        Author RecordDeath(Author author, DateTime dateOfDeath);
        bool DeleteAuthor(Author author);
    }
}
