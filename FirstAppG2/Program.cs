﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstAppG2
{
    class Program
    {
        private static string connectionString;

        static void Main(string[] args)
        {
            connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;

            var results = GetAllAuthors();
            PrintAuthors(results);
        }

        private static void PrintAuthors(IEnumerable<Author> authors)
        {
            foreach (var author in authors)
            {
                Console.WriteLine(author);
            }
        }

        //private static void AuthorDispose()
        //{
        //    using (Author a = new Author())
        //    {
        //        // do something
        //        Console.WriteLine("Doing something with author");
        //    }
        //}

        private static void SecondDataEntry()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                Console.Write("Enter author name: ");
                string authorName = Console.ReadLine();

                if (string.IsNullOrEmpty(authorName))
                {
                    throw new ArgumentException("Empty author name");
                }

                DateTime? dob = new DateTime(2001, 1, 17);

                connection.Open();

                using (SqlTransaction transaction = connection.BeginTransaction())
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.Transaction = transaction;
                        command.CommandText = "insert into Authors (Name, DateOfBirth) values (@authorName, @dob)";
                        command.Parameters.AddWithValue("@authorName", authorName);
                        command.Parameters.AddWithValue("@dob", dob ?? (object)DBNull.Value);

                        command.ExecuteNonQuery();
                        command.CommandText = "select IDENT_CURRENT('Authors')";
                        var authorId = command.ExecuteScalar();
                        Console.WriteLine(authorId);
                    }

                    transaction.Commit();
                }
            }
        }

        private static void FirstDataEntry()
        {
            Console.Write("Enter author name: ");
            string authorName = Console.ReadLine();

            DateTime? dob = new DateTime(2001, 1, 17);

            SqlConnection connection = new SqlConnection(connectionString);
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

            SqlConnection connection = new SqlConnection(connectionString);
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

            SqlConnection connection = new SqlConnection(connectionString);
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

            SqlConnection connection = new SqlConnection(connectionString);
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
            SqlConnection connection = new SqlConnection(connectionString);
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
            SqlConnection connection = new SqlConnection(connectionString);
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

        private static List<Author> GetAuthorsByName()
        {
            Console.Write("Enter name fragment: ");
            string query = Console.ReadLine();

            List<Author> result = new List<Author>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.CommandText = "getAuthors";
                    command.Parameters.AddWithValue("@authorName", query);

                    using (var dr = command.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            result.Add(LoadAuthorForReader(dr));
                        }
                    }

                }

            }
            return result;
        }

        private static List<Author> GetAllAuthors()
        {
            List<Author> result = new List<Author>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "select ID, Name, DateOfBirth, DateOfDeath from Authors";

                    using (var dr = command.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            Author author = LoadAuthorForReader(dr);

                            result.Add(author);
                        }
                    }

                }

            }
            return result;
        }

        private static Author LoadAuthorForReader(SqlDataReader dr)
        {
            int authorID = (int)dr["ID"];
            string authorName = (string)dr["Name"];
            DateTime? dob = dr.IsDBNull(2) ? (DateTime?)null : (DateTime)dr["DateOfBirth"];
            DateTime? dod = dr.IsDBNull(3) ? (DateTime?)null : (DateTime)dr["DateOfDeath"];

            Author author = new Author
            {
                Id = authorID,
                Name = authorName,
                BirthDay = dob,
                DeathDay = dod
            };
            return author;
        }
    }
}
