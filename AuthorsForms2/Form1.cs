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
        private string connectionString;

        public fmMain()
        {
            InitializeComponent();
            connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            var repo = new AuthorRepository(connectionString);
            lstAuthors.DataSource = repo.GetAllAuthors();
        }
    }
}
