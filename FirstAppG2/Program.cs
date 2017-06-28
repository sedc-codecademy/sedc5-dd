using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstAppG2
{
    class Program
    {
        static void Main(string[] args)
        {
            FirstDataRead();
        }

        private static void FirstDataAccess()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "select count(*) from Authors";

            var result = command.ExecuteScalar();

            Console.WriteLine(result);

            connection.Close();
        }

        private static void FirstDataRead()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "select * from Authors";

            var dr = command.ExecuteReader();

            while (dr.Read())
            {
                //int authorID = (int) dr["ID"];
                //string authorName = (string) dr["Name"];

                //int authorID = dr.GetInt32(0);
                //string authorName = dr.GetString(1);

                int authorID = dr.GetFieldValue<int>(0);
                string authorName = dr.GetFieldValue<string>(1);

                //Console.WriteLine($"{authorID}: {authorName}");
            }

            connection.Close();
        }
    }
}
