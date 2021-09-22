using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Threading.Tasks;

using Catalogo.Persistence.Database;
using Catalogo.Services.Queries.DTOs;
using Microsoft.EntityFrameworkCore;
using Services.Common.Collection;
using Services.Common.Mapping;
using Services.Common.Paging;



namespace Catalogo.Services.Queries
{
    public interface IProductInStockQueryService
    {
        Task<DataCollection<ProductInStockDto>> GetAllAsync(int page, int take,
            IEnumerable<int> products = null);
    }

    public class ProductInStockQueryService: IProductInStockQueryService
    {
        private readonly ApplicationDbContext _context;

        public ProductInStockQueryService(
            ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<DataCollection<ProductInStockDto>> GetAllAsync(int page, int take,
            IEnumerable<int> products = null)
        {
            var collection = await _context.Stocks
                .Where(x => products == null || products.Contains(x.ProductId))
                .OrderBy(x => x.ProductId)
                .GetPagedAsync(page, take);

            return collection.MapTo<DataCollection<ProductInStockDto>>();

        }

    }
}
