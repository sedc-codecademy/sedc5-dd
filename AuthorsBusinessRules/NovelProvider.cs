using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AuthorEntities2;
using AuthorsDataAccess2;

namespace AuthorsBusinessRules
{
    public class NovelProvider : INovelProvider
    {
        private INovelRepository repo;

        public NovelProvider(INovelRepository repo)
        {
            this.repo = repo;
        }

        public bool DeleteNovel(Novel novel)
        {
            return repo.DeleteNovel(novel);
        }

        public IEnumerable<Novel> GetNovelsForAuthor(Author author)
        {
            int x = 0;
            return repo.GetNovelsByAuthor(author.Id, ref x);
        }

        public Novel UpdateTitle(Novel novel, string newTitle)
        {
            var oldTitle = novel.Title;

            try
            {
                novel.Title = newTitle;
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
