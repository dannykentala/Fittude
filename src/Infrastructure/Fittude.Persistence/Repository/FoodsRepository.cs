using Fittude.Domain.Interfaces.Repositories;
using Fittude.Domain.Models.Entities;
using Fittude.Persistence.Data;

namespace Fittude.Persistence.Repository;

public class FoodsRepository: BaseRepository<Food>, IFoodsRepository
{
  public FoodsRepository(BaseContext context): base(context)
  { }
}