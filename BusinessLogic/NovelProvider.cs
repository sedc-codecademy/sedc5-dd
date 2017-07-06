using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookEntitiesG1;
using DataAccessG1;

namespace BusinessLogic
{
    public class NovelProvider : INovelProvider
    {
        private INovelRepository repo;

        public NovelProvider (INovelRepository repo)
        {
            this.repo = repo;
        }

        public bool DeleteNovel(Novel novel)
        {
            return repo.DeleteNovel(novel);
        }

        public IEnumerable<Novel> GetNovelsForAuthor(Author author)
        {
            return repo.GetNovelsByAuthor(author.Id);
        }

        public Novel UpdateTitle(Novel novel, string newTitle)
        {
            var oldTitle = novel.Title;
            novel.Title = newTitle;
            try
            {
                return repo.UpdateNovel(novel);
            }
            catch
            {
                novel.Title = oldTitle;
                throw;
            }
        }
    }
}
