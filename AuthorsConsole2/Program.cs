using AuthorEntities2;
using AuthorsDataAccess2;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AuthorsConsole2
{
    class Program
    {
        private static string connectionString;

        static void Main(string[] args)
        {
            connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;
            IAuthorRepository repo = new AuthorRepository(connectionString);

            Console.WriteLine(" === Get Authors by name ===");
            PrintAuthors(repo.GetAuthorsByName("art"));

            Console.WriteLine(" === Get Authors by id (extant) ===");
            var grrm = repo.GetAuthorById(198);
            Console.WriteLine(grrm);

            Console.WriteLine(" === Get Authors by id (invalid) ===");
            var authorNull = repo.GetAuthorById(-1);
            Console.WriteLine(authorNull == null ? "Null returned" : "ERROR: not null");

            Console.WriteLine(" === Create author ===");
            var testAuthor = repo.AddAuthor("Test McTesty");
            Console.WriteLine(testAuthor);

            Console.WriteLine(" === Create author (should throw) ===");
            try
            {
                repo.AddAuthor("Test McTesty");
                Console.WriteLine("ERROR: Inserted double");
            }
            catch (ArgumentException aex)
            {
                Console.WriteLine(aex.Message);
            }

            Console.WriteLine(" === Delete author ===");
            if (repo.DeleteAuthor(testAuthor.Id))
            {
                Console.WriteLine("Deleted test author");
            }
            else
            {
                Console.WriteLine("ERROR: Unable to delete test author");
            }

            Console.WriteLine(" === Delete author (non-existant)===");
            if (repo.DeleteAuthor(testAuthor.Id))
            {
                Console.WriteLine("ERROR: Delete test author twice");
            }
            else
            {
                Console.WriteLine("Unable to delete nonexistant author");
            }

        }

        private static void PrintAuthors(IEnumerable<Author> authors)
        {
            foreach (var author in authors)
            {
                Console.WriteLine(author);
            }
        }
    }
}
