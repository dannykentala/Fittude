using Fittude.Domain.Interfaces.Repositories;
using Fittude.Domain.Models.Entities;
using Fittude.Persistence.Data;

namespace Fittude.Persistence.Repository;

public class UsersRepository: BaseRepository<User>, IUsersRepository
{
  public UsersRepository(BaseContext context): base(context)
  { }
}