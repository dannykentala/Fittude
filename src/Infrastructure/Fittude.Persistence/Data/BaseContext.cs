using Fittude.Domain.Models.Entities;
using Microsoft.EntityFrameworkCore;

namespace Fittude.Persistence.Data;

public class BaseContext : DbContext
{
  public BaseContext(DbContextOptions<BaseContext> options) : base(options)
  { }

  public DbSet<User> Users { get; set; }
  public DbSet<Food> Foods { get; set; }
  public DbSet<FoodPlan> FoodPlans { get; set; }

  // protected override void OnModelCreating(ModelBuilder modelBuilder)
  // {
  //   base.OnModelCreating(modelBuilder);

  //     modelBuilder.Entity<Employee>()
  //         .Property(e => e.Role)
  //         .HasConversion<string>();

  //     modelBuilder.Entity<Payment>()
  //         .Property(e => e.Status)
  //         .HasConversion<string>();
  // }
}