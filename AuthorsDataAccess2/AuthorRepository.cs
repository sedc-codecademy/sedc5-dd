using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AuthorEntities2;
using System.Data.SqlClient;

namespace AuthorsDataAccess2
{
    public class AuthorRepository : IAuthorRepository
    {
        private string connectionString;

        public AuthorRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public Author AddAuthor(string name, DateTime? dateOfBirth, DateTime? dateOfDeath)
        {
            throw new NotImplementedException();
        }

        public bool DeleteAuthor(int authorId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Author> GetAllAuthors()
        {
            throw new NotImplementedException();
        }

        public Author GetAuthorById(int authorId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Author> GetAuthorsByName(string nameFragment)
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
                    command.Parameters.AddWithValue("@authorName", nameFragment);

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

        public Author UpdateAuthor(Author author)
        {
            throw new NotImplementedException();
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
