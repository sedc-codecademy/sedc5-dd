using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstApp
{
    class AuthorsLoader
    {
        private string connectionString;

        public AuthorsLoader(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<Author> LoadAuthors()
        {
            var authors = new List<Author>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    cmd.CommandText = "select ID, Name, DateOfBirth, DateOfDeath from Authors";

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            authors.Add(GetAuthorFromDataReader(dr));
                        }
                    }
                }
            }

            return authors;
        }

        private Author GetAuthorFromDataReader(SqlDataReader dr)
        {
            int authorId = (int)dr["ID"];
            string name = (string)dr["Name"];
            DateTime? dob = dr.IsDBNull(2) ? (DateTime?)null : (DateTime)dr["DateOfBirth"];
            DateTime? dod = dr.IsDBNull(3) ? (DateTime?)null : (DateTime)dr["DateOfDeath"];

            var author = new Author
            {
                Id = authorId,
                Name = name,
                BirthDate = dob,
                DeathDate = dod
            };
            return author;
        }

        public List<Author> LoadAuthorsByFilter(string nameFragment)
        {
            var authors = new List<Author>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "getAuthors";
                    cmd.Parameters.AddWithValue("@authorName", nameFragment);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            authors.Add(GetAuthorFromDataReader(dr));
                        }
                    }
                }
            }
            return authors;
        }
    }
}
