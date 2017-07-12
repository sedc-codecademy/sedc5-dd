using System;

namespace G2EntityDemoModels
{
    public class Author
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public DateTime? DateOfDeath { get; set; }

        public override string ToString()
        {
            return $"#{ID}: {Name}";
        }
    }
}