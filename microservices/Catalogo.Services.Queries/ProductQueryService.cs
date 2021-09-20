using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Catalogo.Persistence.Database;
using Catalogo.Services.Queries.DTOs;

using Microsoft.EntityFrameworkCore;

namespace Catalogo.Services.Queries
{
    public interface IProductQueryService
    {
        Task<DataCollection<ProductDto>> GetAllAsync(int page, int take, IEnumerable<int> products = null);
        Task<ProductDto> GetAsync(int id);
    }

    public class ProductQueryService: IProductQueryService
    {

        private readonly ApplicationDbContext _context;

        public ProductQueryService(
           ApplicationDbContext context)
        {
            _context = context;
        }



        public async Task<ProductDto> GetAsync(int id)
        {
            return (await _context.Products.SingleAsync(x => x.ProductId == id)).MapTo<ProductDto>();
        }

    }
}
