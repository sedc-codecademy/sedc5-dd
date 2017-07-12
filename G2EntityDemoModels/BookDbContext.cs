using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace G2EntityDemoModels
{
    public class BookDbContext : DbContext
    {
        public DbSet<Author> Authors { get; set; }


        public BookDbContext() : base("BooksDb")
        {
        }
    }
}
