using DataAccessG1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookEntitiesG1;

namespace BusinessLogicTests.Fakes
{
    public class FakeNovelRepository : INovelRepository
    {
        public Novel CreateNovel(string name, int authorId)
        {
            throw new NotImplementedException();
        }

        public bool DeleteNovel(Novel Novel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Novel> GetAllNovels()
        {
            throw new NotImplementedException();
        }

        public Novel GetNovelById(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Novel> GetNovelsByAuthor(int authorId)
        {
            return new List<Novel>();
        }

        public IEnumerable<Novel> GetNovelsByName(string nameFragment)
        {
            throw new NotImplementedException();
        }

        public Novel UpdateNovel(Novel Novel)
        {
            throw new NotImplementedException();
        }
    }
}
