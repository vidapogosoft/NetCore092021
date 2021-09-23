
using MediatR;
using Catalogo.Domain;
using Catalogo.Persistence.Database;
using Catalogo.Services.EventHandlers.Commands;

using System.Threading;
using System.Threading.Tasks;

namespace Catalogo.Services.EventHandlers
{
    public class ProductCreateEventHandler: 

        INotificationHandler<ProductCreateCommand>

    {

        private readonly ApplicationDbContext _context;

        public ProductCreateEventHandler(
            ApplicationDbContext context)
        {
            _context = context;
        }


        public async Task Handle(ProductCreateCommand notification, CancellationToken cancellationToken)
        {
            await _context.AddAsync(

                new Product
                {
                    Name = notification.Name,
                    Description = notification.Description,
                    Price = notification.Price

                }

                );

            await _context.SaveChangesAsync();

        }



    }
}
