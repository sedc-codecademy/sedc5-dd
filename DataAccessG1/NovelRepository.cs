using System;
using System.Collections.Generic;
using BookEntitiesG1;
using System.Data.SqlClient;
using System.Linq;

namespace DataAccessG1
{
    public class NovelRepository : INovelRepository
    {
        private string connectionString;

        public NovelRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public Novel CreateNovel(string title, int authorId)
        {
            if (GetNovelsByAuthor(authorId).Any(a => a.Title == title))
            {
                throw new ArgumentException($"Novel with title {title} already exists");
            }

            int novelId = -1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlTransaction transaction = connection.BeginTransaction())
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = connection;
                        cmd.Transaction = transaction;

                        cmd.CommandText = "insert into Novels (Title, AuthorID) values (@novelTitle, @authorId)";
                        cmd.Parameters.AddWithValue("@novelTitle", title);
                        cmd.Parameters.AddWithValue("@authorId", authorId);

                        cmd.ExecuteNonQuery();

                        cmd.CommandText = "select @@identity";
                        novelId = Convert.ToInt32(cmd.ExecuteScalar());
                    }

                    transaction.Commit();
                }
            }
            return GetNovelById(novelId);
        }

        public bool DeleteNovel(Novel Novel)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;

                    cmd.CommandText = "delete from Novels where ID=@id";
                    cmd.Parameters.AddWithValue("@id", Novel.ID);

                    int rowCount = cmd.ExecuteNonQuery();
                    return rowCount == 1;
                }
            }
        }

        public IEnumerable<Novel> GetAllNovels()
        {
            var novels = new List<Novel>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    cmd.CommandText = "select ID, Title, AuthorID from Novels";

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            novels.Add(GetNovelFromDataReader(dr));
                        }
                    }
                }
            }

            return novels;
        }

        public Novel GetNovelById(int id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    cmd.CommandText = "select ID, Title, AuthorID from Novels where ID=@id";
                    cmd.Parameters.AddWithValue("@id", id);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            return GetNovelFromDataReader(dr);
                        }
                        throw new InvalidOperationException($"Novel with ID {id} not found");
                    }
                }
            }

        }

        public IEnumerable<Novel> GetNovelsByAuthor(int authorId)
        {
            var novels = new List<Novel>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    cmd.CommandText = "select ID, Title, AuthorID from Novels where authorId = @authorId";
                    cmd.Parameters.AddWithValue("@authorId", authorId);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            novels.Add(GetNovelFromDataReader(dr));
                        }
                    }
                }
            }

            return novels;
        }

        public IEnumerable<Novel> GetNovelsByName(string title)
        {
            var novels = new List<Novel>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.CommandText = "select ID, Title, AuthorID from Novels where Title like '%'+@title+'%'";
                    cmd.Parameters.AddWithValue("@title", title);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            novels.Add(GetNovelFromDataReader(dr));
                        }
                    }
                }
            }
            return novels;
        }

        public Novel UpdateNovel(Novel Novel)
        {
            throw new NotImplementedException();
        }

        private Novel GetNovelFromDataReader(SqlDataReader dr)
        {
            int novelId = (int)dr["ID"];
            string title = (string)dr["Title"];
            int authorId = (int)dr["AuthorID"];

            var novel = new Novel
            {
                ID = novelId,
                Title = title,
                AuthorID = authorId
            };
            return novel;
        }
    }
}
