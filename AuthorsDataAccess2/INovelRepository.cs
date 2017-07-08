using AuthorEntities2;
using System;
using System.Collections.Generic;

namespace AuthorsDataAccess2
{
    public interface INovelRepository
    {
        Novel CreateNovel(string name, int authorId);
        IEnumerable<Novel> GetAllNovels(ref int counter);
        IEnumerable<Novel> GetNovelsByName(string nameFragment);
        IEnumerable<Novel> GetNovelsByAuthor(int authorId, ref int counter);
        Novel GetNovelById(int id);
        bool DeleteNovel(Novel Novel);
        Novel UpdateNovel(Novel Novel);
    }
}