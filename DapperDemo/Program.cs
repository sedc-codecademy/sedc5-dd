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

            var result = connection.Query<Author>("select * from Authors");
            foreach (var item in result)
            {
                Console.WriteLine(item);
            }
        }
    }
}
