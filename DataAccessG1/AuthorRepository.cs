using System;
using System.Collections.Generic;
using BookEntitiesG1;
using System.Data.SqlClient;

namespace DataAccessG1
{
    public class AuthorRepository : IAuthorRepository
    {
        private string connectionString;

        public AuthorRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public Author CreateAuthor(string name, DateTime? dateOfBirth, DateTime? dateOfDeath)
        {
            throw new NotImplementedException();
        }

        public bool DeleteAuthor(Author author)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Author> GetAllAuthors()
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

        public Author GetAuthorById(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Author> GetAuthorsByName(string nameFragment)
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

        public Author UpdateAuthor(Author author)
        {
            throw new NotImplementedException();
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
    }
}
