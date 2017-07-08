using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DapperDemo
{
    class Program
    {
        static void Main(string[] args)
        {

            var connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;
            var connection = new SqlConnection(connectionString);

            // ExecuteStoredProcedure(connection);

            // DisplayAuthors(connection);

            // DisplayNovels(connection);

            var tempAuthors = new Dictionary<int, Author>();

            var result = connection.Query<Author, Novel, Author>("select * from authors a inner join novels n on n.authorId = a.id order by n.Title",
                (author, novel) =>
                {
                    if (tempAuthors.ContainsKey(author.ID)){
                        tempAuthors[author.ID].Novels.Add(novel);
                        novel.Author = tempAuthors[author.ID];
                    }
                    else
                    {
                        tempAuthors.Add(author.ID, author);
                        author.Novels = new List<Novel> { novel };
                        novel.Author = author;
                    }
                    return tempAuthors[author.ID];
                }).Distinct();


            foreach (var item in result)
            {
                Console.WriteLine(item);
            }
        }



        private static void DisplayNovels(SqlConnection connection)
        {
            var novels = connection.Query<Novel>("select * from Novels");
            foreach (var novel in novels)
            {
                Console.WriteLine(novel);
            }
        }

        private static void DisplayAuthors(SqlConnection connection)
        {
            var result = connection.Query<Author>("select * from Authors");
            foreach (var item in result)
            {
                Console.WriteLine(item);
            }
        }

        private static void ExecuteStoredProcedure(SqlConnection connection)
        {
            while (true)
            {
                Console.Write("Enter name fragment: ");
                var query = Console.ReadLine();

                var filteredAuthors = connection.Query<Author>(
                    "getAuthors",
                    new { authorName = query },
                    commandType: System.Data.CommandType.StoredProcedure
                );

                foreach (var item in filteredAuthors)
                {
                    Console.WriteLine(item);
                }

            }
        }
    }
}
