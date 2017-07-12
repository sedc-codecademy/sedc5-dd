using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace G2EntityDemoModels
{
    public class EfDemoContext : DbContext
    {
        public DbSet<Human> Humans { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Subject> Subjects { get; set; }

        public EfDemoContext() : base("EFDemos")
        {

        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Configurations.Add(new HumanMap());
            modelBuilder.Configurations.Add(new SubjectMap());
            modelBuilder.Configurations.Add(new GroupMap());
        }

    }

    internal class GroupMap : EntityTypeConfiguration<Group>
    {
        public GroupMap()
        {
            HasMany(g => g.Subjects).WithMany(s => s.Groups)
                .Map(m => m.MapLeftKey("GroupID").MapRightKey("SubjectID").ToTable("GroupSubjects"));
        }
    }

    internal class SubjectMap : EntityTypeConfiguration<Subject>
    {
        public SubjectMap()
        {
            HasMany(s => s.Groups).WithMany(g => g.Subjects)
                .Map(m => m.MapRightKey("GroupID").MapLeftKey("SubjectID").ToTable("GroupSubjects"));

        }
    }

    internal class HumanMap : EntityTypeConfiguration<Human>
    {
        public HumanMap()
        {
            ToTable("Humans");
            HasOptional(h => h.Mommy).WithMany().HasForeignKey(h => h.MotherID);
            HasOptional(h => h.Daddy).WithMany().HasForeignKey(h => h.FatherID);
        }
    }
}
