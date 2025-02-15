using Fittude.Domain.Interfaces.Managers;
using Fittude.Domain.Interfaces.Repositories;
using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Responses;

namespace Fittude.Application.Managers;

public class FoodPlansManager: IFoodPlansManager
{
  private readonly IFoodPlansRepository _repository;
  public FoodPlansManager
  (
    IFoodPlansRepository foodPlansRepository
  )
  {
    _repository = foodPlansRepository;
  }

  public Response<FoodPlanDto> GetById(int foodPlanId)
  {
    throw new NotImplementedException();
  }
}