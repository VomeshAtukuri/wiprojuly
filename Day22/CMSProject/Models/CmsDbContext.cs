using Microsoft.EntityFrameworkCore;
using CMSProject.Models;
namespace CMSProject.Models
{
    public class CmsDbContext : DbContext
    {
        public CmsDbContext() { }
        public CmsDbContext(DbContextOptions<CmsDbContext> options) : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Customer>().ToTable("Customer");
        }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<CMSProject.Models.Login> Login { get; set; } = default!;

    }
}
