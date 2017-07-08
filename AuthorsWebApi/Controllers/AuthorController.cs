using AuthorEntities2;
using AuthorEntities2.ViewModels;
using AuthorsBusinessRules;
using AuthorsDataAccess2;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace AuthorsWebApi.Controllers
{
    public class AuthorController : ApiController
    {
        private IAuthorProvider provider;

        public AuthorController()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["BooksDb"].ConnectionString;
            IAuthorRepository repo = new AuthorRepository(connectionString);
            INovelRepository novelRepo = new NovelRepository(connectionString);

            provider = new AuthorProvider(repo, novelRepo);
        }


        public IEnumerable<AuthorListViewModel> Get()
        {
            return provider.GetAuthors(true).Select(a => AuthorListViewModel.FromAuthor(a));
        }

        public AuthorDetailsViewModel Get(int id)
        {
            Author author = provider.GetAuthorById(id);
            return AuthorDetailsViewModel.FromAuthor(author);
        }
    }
}
