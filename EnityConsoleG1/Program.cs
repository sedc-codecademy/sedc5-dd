using EntityDemoModelG1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnityConsoleG1
{
    class Program
    {
        static void Main(string[] args)
        {
            //BooksContext context = new BooksContext();
            EfDemoContext context = new EfDemoContext();
            context.Database.Log = s =>
            {
                if (s.Contains("__MigrationHistory"))
                    return;
                if (s.Contains("EdmMetadata"))
                    return;
                var oldd = Console.ForegroundColor;
                Console.ForegroundColor = ConsoleColor.Cyan;
                Console.WriteLine(s);
                Console.ForegroundColor = oldd;
            };

            //var weko = context.Humans.Includes("Mother", "Father").SingleOrDefault(h => h.ID == 1);
            //Console.WriteLine(weko);

            var group = context.Groups.Includes("Subjects")
                .SingleOrDefault(g => g.ID == 2);

            Console.WriteLine(group);
            foreach (var subject in group.Subjects)
            {
                Console.WriteLine("  " + subject);
            }

        }

        private static void FindAuthor(BooksContext context, string nameFragment)
        {
            var authors = context.Authors.Include("Novels")
                 .OrderBy(a => a.Name)
                 .Where(a => a.Name.Contains(nameFragment)).ToList();

            foreach (var author in authors)
            {
                Console.WriteLine(author);
                foreach (var novel in author.Novels)
                {
                    Console.WriteLine($"   {novel}");
                }
            }
        }
    }
}
