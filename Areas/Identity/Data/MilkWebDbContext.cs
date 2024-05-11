using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using FarmMilk.Areas.Identity.Data;

namespace FarmMilk.Areas.Identity.Data;

public class MilkWebDbContext : IdentityDbContext<MilkWebUser>
{
    public MilkWebDbContext(DbContextOptions<MilkWebDbContext> options)
        : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
        // Customize the ASP.NET Identity model and override the defaults if needed.
        // For example, you can rename the ASP.NET Identity table names and more.
        // Add your customizations after calling base.OnModelCreating(builder);

        builder.ApplyConfiguration(new ShoesMVCUserEntityConfiguration());
    }
}

public class ShoesMVCUserEntityConfiguration : IEntityTypeConfiguration<MilkWebUser>
{
    public void Configure(EntityTypeBuilder<MilkWebUser> builder)
    {
        builder.Property(u => u.firstName).HasMaxLength(255);
        builder.Property(u => u.lastName).HasMaxLength(255);
    }
}
