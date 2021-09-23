
using MediatR;
using Catalogo.Domain;
using Catalogo.Persistence.Database;
using Catalogo.Services.EventHandlers.Commands;

using Catalogo.Services.EventHandlers.Exceptions;

using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Catalago.Common;

namespace Catalogo.Services.EventHandlers
{
    public class ProductInStockUpdateStockEventHandler
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<ProductInStockUpdateStockEventHandler> _logger;

        public ProductInStockUpdateStockEventHandler(
            ApplicationDbContext context,
           ILogger<ProductInStockUpdateStockEventHandler> logger
           
           )
       {
            _context = context;
            _logger = logger;
        }


        public async Task Handle (ProductInStockUpdateStockCommand notificacion, CancellationToken cancellationToken)
        {

            _logger.LogInformation("--- Product in Stock Started");

            var products = notificacion.Items.Select(x => x.ProductId);
            var stocks = await _context.Stocks.Where(x=> products.Contains(x.ProductId)).ToListAsync();

            _logger.LogInformation("--- Info Product stock in database");

            foreach (var item in notificacion.Items)
            {

                var entry = stocks.SingleOrDefault(x => x.ProductId == item.ProductId);

                if (item.Action == Enums.ProductInStockAction.Substract)
                {
                    if (entry == null || item.Stock > entry.Stock)
                    {
                        _logger.LogError($"--- No stock in database: { entry.ProductId}");
                        
                        throw new ProductInStockUpdateStockCommandException($"Product {entry.ProductId} - No stock");
                    }

                    entry.Stock -= item.Stock;

                    _logger.LogInformation($"--- Stock subtracted in database: { entry.ProductId}");
                }
                else
                {
                    if (entry == null)
                    {

                        entry = new ProductInStock
                        {
                            ProductId = item.ProductId
                        };

                        _logger.LogInformation($"--- New Stock in database: { entry.ProductId}");

                        await _context.AddAsync(entry);

                    }

                    _logger.LogInformation("--- Add Stock in database: ");
                    entry.Stock += item.Stock;

                }

            }

            await _context.SaveChangesAsync();

        }

    }
}
