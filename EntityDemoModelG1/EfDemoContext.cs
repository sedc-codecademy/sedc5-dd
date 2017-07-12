using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.ModelConfiguration;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityDemoModelG1
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
            //modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            modelBuilder.Configurations.Add(new HumanMap());
            modelBuilder.Configurations.Add(new GroupMap());
            modelBuilder.Configurations.Add(new SubjectMap());
        }
    }

    internal class SubjectMap : EntityTypeConfiguration<Subject>
    {
        public SubjectMap()
        {
            HasMany(s => s.Groups)
            .WithMany(g => g.Subjects)
            .Map(c => c.MapLeftKey("SubjectID")
                       .MapRightKey("GroupID")
                       .ToTable("GroupSubjects"));
        }
    }

    internal class GroupMap : EntityTypeConfiguration<Group>
    {
        public GroupMap()
        {
            HasMany(g => g.Subjects)
            .WithMany(s => s.Groups)
            .Map(c => c.MapLeftKey("GroupID")
                       .MapRightKey("SubjectID")
            .ToTable("GroupSubjects"));
        }
    }

    internal class HumanMap : EntityTypeConfiguration<Human>
    {
        public HumanMap()
        {
            ToTable("Humans");
            HasOptional(h => h.Mother).WithMany().HasForeignKey(h => h.MotherID);
            HasOptional(h => h.Father).WithMany().HasForeignKey(h => h.FatherID);
        }
    }
}
