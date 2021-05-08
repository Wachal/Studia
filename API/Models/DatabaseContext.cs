using Microsoft.EntityFrameworkCore;
namespace net_core_lab5.Models
{
 public class DatabaseContext : DbContext
 {
 public DatabaseContext(DbContextOptions<DatabaseContext> options) : base(options)
 {
 }
 public DbSet<Agent> Agents { get; set; }
 public DbSet<Customer> Customers {get;set;}
 }
}