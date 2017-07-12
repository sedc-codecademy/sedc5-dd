using G2EntityDemoModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace G2EntityConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            ScheduleExamples();
        }

        private static void ScheduleExamples()
        {
            using (EfDemoContext context = new EfDemoContext())
            {
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

                var subjects = context.Subjects.Include("Groups").ToList();
                foreach (var subject in subjects)
                {
                    Console.WriteLine(subject.Name);
                    Console.WriteLine(subject.Groups.Count());
                }
            }
        }

        private static void HumansExamples()
        {
            using (EfDemoContext context = new EfDemoContext())
            {
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

                var humans = context.Humans.ToList();

                var weko = humans.Single(h => h.ID == 1);
                Console.WriteLine(weko);
            }
        }

        private static void BookExamples()
        {
            using (BookDbContext context = new BookDbContext())
            {
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

                GetAuthors(context);

                //FindAuthors(context);

            }
        }

        private static void GetAuthors(BookDbContext context)
        {
            var authors = context.Authors.Include("Novels").Take(5).ToList();
            foreach (var author in authors)
            {
                Console.WriteLine(author);
                //foreach (var novel in author.Novels)
                //{
                //    Console.WriteLine($"  {novel}");
                //}

            }
        }


        private static void GetAuthor(BookDbContext context)
        {
            var author = context.Authors.SingleOrDefault(a => a.ID == 92);
            if (author == null)
            {
                Console.WriteLine("Not found");
                return;
            }

            Console.WriteLine(author);
            foreach (var novel in author.Novels)
            {
                Console.WriteLine($"  {novel}");
            }
        }

        private static void FindAuthors(BookDbContext context)
        {
            Console.Write("Enter name fragment: ");
            var query = Console.ReadLine();

            var authors = context.Authors.OrderBy(a => a.ID)
                .Where(a => a.Name.Contains(query))
                .ToList();

            Console.WriteLine($"{authors.Count()} rows found");
            Console.WriteLine(authors.First());
            Console.WriteLine(authors.Skip(1).First());
            Console.WriteLine(authors.Skip(3).First());
        }
    }
}
