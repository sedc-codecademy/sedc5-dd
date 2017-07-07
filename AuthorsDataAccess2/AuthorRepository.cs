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
            if (GetAuthorsByName(name).Any(a => a.Name == name))
            {
                throw new ArgumentException("Name already exists");
            }

            var authorId = -1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlTransaction transaction = connection.BeginTransaction())
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.Transaction = transaction;
                        command.CommandText = "insert into Authors (Name, DateOfBirth, DateOfDeath) values (@authorName, @dob, @dod)";
                        command.Parameters.AddWithValue("@authorName", name);
                        command.Parameters.AddWithValue("@dob", dateOfBirth ?? (object)DBNull.Value);
                        command.Parameters.AddWithValue("@dod", dateOfDeath ?? (object)DBNull.Value);

                        command.ExecuteNonQuery();
                        command.CommandText = "select IDENT_CURRENT('Authors')";
                        authorId = Convert.ToInt32(command.ExecuteScalar());
                    }
                    transaction.Commit();
                }
            }

            return GetAuthorById(authorId);
        }

        public bool DeleteAuthor(int authorId)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "delete from Authors where ID=@ID";
                    command.Parameters.AddWithValue("@ID", authorId);

                    int deletedCount = command.ExecuteNonQuery();
                    return deletedCount == 1;
                }
            }
        }

        public IEnumerable<Author> GetAllAuthors()
        {
            List<Author> result = new List<Author>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "Select ID, Name, DateOfBirth, DateOfDeath from Authors ";

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

        public Author GetAuthorById(int authorId)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "Select ID, Name, DateOfBirth, DateOfDeath from Authors where ID=@ID";
                    command.Parameters.AddWithValue("@ID", authorId);

                    using (var dr = command.ExecuteReader())
                    {
                        Author author = null;
                        if (dr.Read())
                        {
                            return LoadAuthorForReader(dr);
                        }
                        return author;
                    }
                }
            }
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
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand())
                {
                    command.Connection = connection;
                    command.CommandText = "update Authors set Name = @name, DateOfBirth = @dob, DateOfDeath = @dod where ID = @id";
                    command.Parameters.AddWithValue("@authorName", author.Name);
                    command.Parameters.AddWithValue("@dob", author.BirthDay ?? (object)DBNull.Value);
                    command.Parameters.AddWithValue("@dod", author.DeathDay ?? (object)DBNull.Value);
                    command.Parameters.AddWithValue("@ID", author.Id);

                    command.ExecuteNonQuery();

                    return author;
                }
            }

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
