using BookEntitiesG1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public interface INovelProvider
    {
        bool DeleteNovel(Novel novel);
        IEnumerable<Novel> GetNovelsForAuthor(Author author);
    }
}
