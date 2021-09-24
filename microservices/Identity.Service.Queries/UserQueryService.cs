using Identity.Persistence.Database;
using Identity.Service.Queries.DTOs;
using Microsoft.EntityFrameworkCore;
using Services.Common.Collection;
using Services.Common.Mapping;
using Services.Common.Paging;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Identity.Service.Queries
{

    public interface IUserQueryService
    {
        Task<DataCollection<UserDto>> GetAllAsync(int page, int take, IEnumerable<string> users = null);

    }


    public class UserQueryService : IUserQueryService
    {
        private readonly ApplicationDbContext _context;

        public UserQueryService(
            ApplicationDbContext context)
        {
            _context = context;
        }


        public async Task<DataCollection<UserDto>> GetAllAsync(int page, int take, IEnumerable<string> users = null)
        {
            var collection = await _context.Users
                .Where(x => users == null || users.Contains(x.Id))
                .OrderBy(x => x.FirstName)
                .GetPagedAsync(page, take);


            return collection.MapTo<DataCollection<UserDto>>();

        }


    }
}
