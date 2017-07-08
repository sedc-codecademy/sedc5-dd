using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Schedule
{
    class Program
    {
        static void Main(string[] args)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["Schedule"].ConnectionString;
            var connection = new SqlConnection(connectionString);

            var result = connection.Query<Group, Subject, Subject>("select g.*, s.* from Groups g inner join GroupSubjects gs on gs.GroupID = g.ID inner join Subjects s on gs.SubjectID = s.ID",
                (group, subject) =>
                {
                    Console.WriteLine(group);
                    Console.WriteLine(subject);
                    return null;
                }).Distinct();
        }
    }
}
