using Fittude.Domain.Interfaces.Repositories;
using Fittude.Domain.Models.Entities;
using Fittude.Persistence.Data;

namespace Fittude.Persistence.Repository;

public class FoodPlansRepository: BaseRepository<FoodPlan>, IFoodPlansRepository
{
  public FoodPlansRepository(BaseContext context): base(context)
  { }
}