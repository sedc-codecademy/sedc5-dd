namespace DapperDemo
{
    public class Nomination
    {
        public int ID { get; set; }
        public int BookID { get; set; }
        public int AwardID { get; set; }
        public int YearNominated { get; set; }
        public bool IsWinner { get; set; }

        public Award Award { get; set; }
        public Novel Book { get; set; }

    }
}