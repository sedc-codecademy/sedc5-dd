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
            while (true)
            {
                FirstDataEntry();
            }
        }

        private static void FirstDataEntry()
        {
            Console.Write("Enter author name: ");
            string authorName = Console.ReadLine();

            DateTime? dob = new DateTime(2001, 1, 17);

            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlTransaction transaction = connection.BeginTransaction();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.Transaction = transaction;
            command.CommandText = "insert into Authors (Name, DateOfBirth) values (@authorName, @dob)";
            command.Parameters.AddWithValue("@authorName", authorName);
            command.Parameters.AddWithValue("@dob", dob ?? (object)DBNull.Value);

            var dr = command.ExecuteNonQuery();

            command.CommandText = "select IDENT_CURRENT('Authors')";
            var authorId = command.ExecuteScalar();

            Console.WriteLine(authorId);

            transaction.Commit();

            connection.Close();
        }

        //VULNERABLE - DONT USE THIS EVER
        private static void FirstDataQuery()
        {
            Console.Write("Enter name fragment: ");
            string query = Console.ReadLine();

            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            //VULNERABLE - DONT USE THIS EVER
            command.CommandText = $"select ID, Name, DateOfBirth from Authors where name like '%{query}%'";

            var dr = command.ExecuteReader();

            while (dr.Read())
            {
                int authorID = (int)dr["ID"];
                string authorName = (string)dr["Name"];
                DateTime? dob = dr.IsDBNull(2)
                    ? (DateTime?)null
                    : (DateTime)dr["DateOfBirth"];

                Console.WriteLine($"{authorID}: {authorName} ({dob})");
            }

            connection.Close();
        }

        private static void SecondDataQuery()
        {
            Console.Write("Enter name fragment: ");
            string query = Console.ReadLine();

            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "select ID, Name, DateOfBirth from Authors where name like '%'+@authorName+'%'";
            command.Parameters.AddWithValue("@authorName", query);

            var dr = command.ExecuteReader();

            while (dr.Read())
            {
                int authorID = (int)dr["ID"];
                string authorName = (string)dr["Name"];
                DateTime? dob = dr.IsDBNull(2)
                    ? (DateTime?)null
                    : (DateTime)dr["DateOfBirth"];

                Console.WriteLine($"{authorID}: {authorName} ({dob})");
            }

            connection.Close();
        }

        private static void ThirdDataQuery()
        {
            Console.Write("Enter name fragment: ");
            string query = Console.ReadLine();

            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "getAuthors";
            command.Parameters.AddWithValue("@authorName", query);

            var dr = command.ExecuteReader();

            while (dr.Read())
            {
                int authorID = (int)dr["ID"];
                string authorName = (string)dr["Name"];
                DateTime? dob = dr.IsDBNull(2)
                    ? (DateTime?)null
                    : (DateTime)dr["DateOfBirth"];

                Console.WriteLine($"{authorID}: {authorName} ({dob})");
            }

            connection.Close();
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
            command.CommandText = "select ID, Name from Authors";

            var dr = command.ExecuteReader();

            while (dr.Read())
            {
                int authorID = (int)dr["ID"];
                string authorName = (string)dr["Name"];

                //int authorID = dr.GetInt32(0);
                //string authorName = dr.GetString(1);

                //int authorID = dr.GetFieldValue<int>(0);
                //string authorName = dr.GetFieldValue<string>(1);

                Console.WriteLine($"{authorID}: {authorName}");
            }

            connection.Close();
        }
    }
}
