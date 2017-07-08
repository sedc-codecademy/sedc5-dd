using AuthorEntities2;
using AuthorsBusinessRules;
using AuthorsDataAccess2;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AuthorsForms2
{
    public partial class fmMain : Form
    {
        private IAuthorProvider authors;
        
        public fmMain()
        {
            InitializeComponent();
            var connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;
            var authorRepo = new AuthorRepository(connectionString);
            var novelsRepo = new NovelRepository(connectionString);

            authors = new AuthorProvider(authorRepo, novelsRepo);
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            lstAuthors.DataSource = authors.GetAuthors(true);
        }

        private void lstAuthors_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lstAuthors.SelectedIndex == -1)
                return;

            var author = (Author)lstAuthors.SelectedItem;
            lstNovels.DataSource = author.Novels;
        }
    }
}
