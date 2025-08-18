using Microsoft.EntityFrameworkCore;
namespace EmployCurd.Models
{
    public class EFCoreDbContext : DbContext
    {
        public EFCoreDbContext(DbContextOptions<EFCoreDbContext> options) : base(options)
        {
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=DESKTOP-9L94JKC;Database=wiprojuly;Trusted_Connection=True;TrustServerCertificate=True");
            }
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employ>().ToTable("Employ");
        }
        public DbSet<Employ> Employees { get; set; }
    }
}
