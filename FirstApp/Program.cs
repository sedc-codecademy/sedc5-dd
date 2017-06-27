using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstApp
{
    class Program
    {
        static void Main(string[] args)
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "select count(*) from Authors";

            int authorCount = (int)cmd.ExecuteScalar();

            Console.WriteLine(authorCount);

            connection.Close();
        }
    }
}
