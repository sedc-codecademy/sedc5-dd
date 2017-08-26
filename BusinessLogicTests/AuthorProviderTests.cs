using System;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BusinessLogic;
using BusinessLogicTests.Fakes;

namespace BusinessLogicTests
{
    [TestClass]
    public class AuthorProviderTests
    {
        private AuthorProvider authorProvider;
        private FakeAuthorRepository authorRepo;

        [TestInitialize]
        public void Initialize()
        {
            authorRepo = new FakeAuthorRepository();
            var novelRepo = new FakeNovelRepository();
            authorProvider = new AuthorProvider(authorRepo, novelRepo);
        }

        [TestMethod]
        public void GetAuthors_Name_Fragment_Arthur_Returns_Three_Results_Test()
        {
            // 1. Arrange
            var nameFragment = "Arthur";
            // 2. Act
            var result = authorProvider.GetAuthors(nameFragment);
            // 3. Assert
            Assert.AreEqual(result.Count(), 3);
            Assert.IsTrue(authorRepo.GetAuthorsByNameCalled);
            Assert.IsFalse(authorRepo.GetAllAuthorsCalled);


        }
    }
}
