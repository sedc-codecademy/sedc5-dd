using BookEntitiesG1;
using DataAccessG1;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AuthorConsoleG1
{
    class Program
    {
        private static string connectionString;
        static void Main(string[] args)
        {
            connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;

            var authorRepo = new AuthorRepository(connectionString);

            Console.WriteLine("--- Get all authors with art in the name ---");
            var arts = authorRepo.GetAuthorsByName("art");
            PrintAuthors(arts);

            Console.WriteLine("--- Get George R.R. Martin by id ---");
            var grrm = authorRepo.GetAuthorById(198);
            Console.WriteLine(grrm);

            Console.WriteLine("--- Insert new author ---");
            Author author;
            string testName = "Test McTest";
            try
            {
                author = authorRepo.CreateAuthor(testName);
                Console.WriteLine(author);
            }
            catch (ArgumentException ex)
            {
                Console.WriteLine(ex.Message);
                author = authorRepo.GetAuthorsByName(testName).Single(a => a.Name == testName);
            }

            Console.WriteLine("--- Insert author again ---");
            try
            {
                author = authorRepo.CreateAuthor(testName);
                Console.WriteLine(author);
            }
            catch (ArgumentException ex)
            {
                Console.WriteLine(ex.Message);
            }

            Console.WriteLine("--- Delete author ---");
            var deleted = authorRepo.DeleteAuthor(author);
            if (deleted)
            {
                Console.WriteLine($"Successfully deleted author {author.Id}");
            }
            else
            {
                Console.WriteLine($"Error deleting author {author.Id}");
            }

            Console.WriteLine("--- More delete author ---");
            deleted = authorRepo.DeleteAuthor(author);
            if (deleted)
            {
                Console.WriteLine($"Successfully deleted author {author.Id}");
            }
            else
            {
                Console.WriteLine($"Error deleting author {author.Id}");
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
