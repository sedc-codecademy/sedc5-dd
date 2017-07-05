using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstAppG2
{
    class AuthorLoader
    {
        private string connectionString;

        public AuthorLoader(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<Author> GetAuthorsByName(string query)
        {
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

        public List<Author> GetAllAuthors()
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

        private Author LoadAuthorForReader(SqlDataReader dr)
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
