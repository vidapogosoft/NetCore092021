
using Microsoft.EntityFrameworkCore;
using Catalogo.Persistence.Database;

namespace Catalogo.Tests.Config
{
    public static class ApplicationDbContextInMemory
    {
        public static ApplicationDbContext Get()
        {

            var options = new DbContextOptionsBuilder<ApplicationDbContext>()
                .UseInMemoryDatabase(databaseName: $"Catalago.db" )
                .Options;

            return new ApplicationDbContext(options);

        }

    }
}
