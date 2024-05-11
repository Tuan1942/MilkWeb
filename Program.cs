using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using FarmMilk.Areas.Identity.Data;
using FarmMilk.Class;
var builder = WebApplication.CreateBuilder(args);
var connectionString = ConnectionURL.User ?? throw new InvalidOperationException("Connection string 'ShoesMVCDbContextConnection' not found.");

builder.Services.AddDbContext<MilkWebDbContext>(options => options.UseSqlServer(connectionString));

builder.Services.AddDefaultIdentity<MilkWebUser>(options => options.SignIn.RequireConfirmedAccount = false).AddEntityFrameworkStores<MilkWebDbContext>();

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddHttpContextAccessor();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Home}/{id?}");

app.MapRazorPages();   
app.Run();
