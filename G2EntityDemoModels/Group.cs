using System.Collections.Generic;

namespace G2EntityDemoModels
{
    public class Group
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Subject> Subjects { get; set; }
    }
}