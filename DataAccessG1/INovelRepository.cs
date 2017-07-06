using BookEntitiesG1;
using System;
using System.Collections.Generic;

namespace DataAccessG1
{
    public interface INovelRepository
    {
        Novel CreateNovel(string name, int authorId);
        IEnumerable<Novel> GetAllNovels();
        IEnumerable<Novel> GetNovelsByName(string nameFragment);
        IEnumerable<Novel> GetNovelsByAuthor(int authorId);
        Novel GetNovelById(int id);
        bool DeleteNovel(Novel Novel);
        Novel UpdateNovel(Novel Novel);
    }
}