using AuthorEntities2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AuthorsBusinessRules
{
    public interface INovelProvider
    {
        bool DeleteNovel(Novel novel);
        IEnumerable<Novel> GetNovelsForAuthor(Author author);
        Novel UpdateTitle(Novel novel, string newTitle);
    }
}
