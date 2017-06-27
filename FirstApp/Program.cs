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
            FirstFiltering();

        }

        private static void FirstConnection()
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

        private static void FirstFiltering()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "select * from Authors";

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                int authorId = dr.GetInt32(0);
                string name = dr.GetString(1);
                Console.WriteLine($"{authorId} - {name}");
            }

            connection.Close();
        }
    }
}
