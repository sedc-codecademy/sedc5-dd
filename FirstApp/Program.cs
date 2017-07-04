using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstApp
{
    class Program
    {
        private static string connectionString;
        private static List<Author> authors = new List<Author>();

        static void Main(string[] args)
        {
            connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;
            //LoadAuthors();
            while (true)
            {
                LoadAuthorsByFilter();
                PrintAuthors();
            }
        }

        private static void LoadAuthorsByFilter()
        {
            Console.Write("Enter name fragment: ");
            var fragment = Console.ReadLine();
            var loader = new AuthorsLoader(connectionString);
            authors = loader.LoadAuthorsByFilter(fragment);
        }

        private static void PrintAuthors()
        {
            foreach (var author in authors)
            {
                Console.WriteLine(author);
            }
        }

        private static void SecondAdd()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlTransaction transaction = connection.BeginTransaction())
                {
                    Console.Write("Enter author name: ");
                    string authorName = Console.ReadLine();

                    DateTime? dob = null; // new DateTime(2017, 7, 4);

                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = connection;
                        cmd.Transaction = transaction;

                        cmd.CommandText = "insert into Authors (Name, DateOfBirth) values (@authorName, @dateOfBirth)";
                        cmd.Parameters.AddWithValue("@authorName", authorName);
                        cmd.Parameters.AddWithValue("@dateOfBirth", dob ?? (object)DBNull.Value);

                        cmd.ExecuteNonQuery();

                        cmd.CommandText = "select @@identity";
                        var authorId = cmd.ExecuteScalar();
                        Console.WriteLine(authorId);
                    }

                    transaction.Commit();
                }
            }
        }

        private static void FirstAdd()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlTransaction transaction = connection.BeginTransaction();

            Console.Write("Enter author name: ");
            string authorName = Console.ReadLine();

            DateTime? dob = null; // new DateTime(2017, 7, 4);

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = connection;
            cmd.Transaction = transaction;

            cmd.CommandText = "insert into Autors (Name, DateOfBirth) values (@authorName, @dateOfBirth)";
            cmd.Parameters.AddWithValue("@authorName", authorName);
            cmd.Parameters.AddWithValue("@dateOfBirth", dob ?? (object)DBNull.Value);

            cmd.ExecuteNonQuery();

            cmd.CommandText = "select @@identity";
            var authorId = cmd.ExecuteScalar();

            Console.WriteLine(authorId);

            transaction.Commit();

            connection.Close();

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

        private static void FirstListing()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "select ID, Name, DateOfBirth from Authors";

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                //int authorId = dr.GetInt32(0);
                //string name = dr.GetString(1);

                //int authorId = dr.GetFieldValue<int>(0);
                //string name = dr.GetFieldValue<string>(1);

                int authorId = (int)dr["ID"];
                string name = (string)dr["Name"];
                DateTime? dob = dr.IsDBNull(2)
                    ? (DateTime?)null
                    : (DateTime)dr["DateOfBirth"];

                Console.WriteLine($"{authorId} - {name} - {dob}");
            }

            connection.Close();
        }

        // vulnerable - DO NOT USE THIS FORM
        private static void FirstFiltering()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            Console.Write("Enter author name: ");
            string query = Console.ReadLine();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            // vulnerable - DO NOT USE THIS FORM
            cmd.CommandText = "select ID, Name, DateOfBirth from Authors where Name like '%" + query + "%'";

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                //int authorId = dr.GetInt32(0);
                //string name = dr.GetString(1);

                //int authorId = dr.GetFieldValue<int>(0);
                //string name = dr.GetFieldValue<string>(1);

                int authorId = (int)dr["ID"];
                string name = (string)dr["Name"];
                DateTime? dob = dr.IsDBNull(2)
                    ? (DateTime?)null
                    : (DateTime)dr["DateOfBirth"];

                Console.WriteLine($"{authorId} - {name} - {dob}");
            }

            connection.Close();
        }

        private static void SecondFiltering()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            Console.Write("Enter author name: ");
            string query = Console.ReadLine();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "select ID, Name, DateOfBirth from Authors where Name like '%'+@authorName+'%'";
            cmd.Parameters.AddWithValue("@authorName", query);

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                //int authorId = dr.GetInt32(0);
                //string name = dr.GetString(1);

                //int authorId = dr.GetFieldValue<int>(0);
                //string name = dr.GetFieldValue<string>(1);

                int authorId = (int)dr["ID"];
                string name = (string)dr["Name"];
                DateTime? dob = dr.IsDBNull(2)
                    ? (DateTime?)null
                    : (DateTime)dr["DateOfBirth"];

                Console.WriteLine($"{authorId} - {name} - {dob}");
            }

            connection.Close();
        }

        private static void ThirdFiltering()
        {
            SqlConnection connection = new SqlConnection("Server=.;Database=BooksDb;Trusted_Connection=True;");
            connection.Open();

            Console.Write("Enter author name: ");
            string query = Console.ReadLine();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "getAuthors";
            cmd.Parameters.AddWithValue("@authorName", query);

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                //int authorId = dr.GetInt32(0);
                //string name = dr.GetString(1);

                //int authorId = dr.GetFieldValue<int>(0);
                //string name = dr.GetFieldValue<string>(1);

                int authorId = (int)dr["ID"];
                string name = (string)dr["Name"];
                DateTime? dob = dr.IsDBNull(2)
                    ? (DateTime?)null
                    : (DateTime)dr["DateOfBirth"];

                Console.WriteLine($"{authorId} - {name} - {dob}");
            }

            connection.Close();
        }

    }
}

