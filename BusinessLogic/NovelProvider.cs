using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookEntitiesG1;

namespace BusinessLogic
{
    public class NovelProvider : INovelProvider
    {
        public bool DeleteNovel(Novel novel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Novel> GetNovelsForAuthor(Author author)
        {
            throw new NotImplementedException();
        }

        public Novel UpdateTitle(Novel novel, string newTitle)
        {
            throw new NotImplementedException();
        }
    }
}
