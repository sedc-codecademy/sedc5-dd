using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace EntityDemoG1.Models
{
    public class BooksContext : DbContext
    {
        public DbSet<Author> Authors { get; set; }

        public BooksContext(): base("BooksDb")
        {

        }
    }
}