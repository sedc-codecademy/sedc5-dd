using BusinessLogic;
using DataAccessG1;
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

namespace AuthorsForm
{
    public partial class frmMain : Form
    {
        private IAuthorProvider authorProvider;

        public frmMain()
        {
            InitializeComponent();
            var connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;
            var authorRepo = new AuthorRepository(connectionString);
            authorProvider = new AuthorProvider(authorRepo);
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            lstAuthors.DataSource = authorProvider.GetAuthors();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }
    }
}
