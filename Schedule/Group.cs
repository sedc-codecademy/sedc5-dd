using System.Collections.Generic;

namespace Schedule
{
    public class Group
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public List<Subject> Subjects { get; set; }

        public override string ToString()
        {
            return Name;
        }
    }
}