using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace EntityDemoModelG1
{
    public class BooksContext : DbContext
    {
        public DbSet<Author> Authors { get; set; }
        public DbSet<Novel> Novels { get; set; }

        public BooksContext(): base("BooksDb")
        {

        }
    }
}