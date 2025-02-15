using Fittude.Domain.Interfaces.Managers;
using Fittude.Domain.Interfaces.Repositories;
using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Responses;

namespace Fittude.Application.Managers;

public class FoodsManager: IFoodsManager
{
  private readonly IFoodsRepository _repository;
  public FoodsManager
  (
    IFoodsRepository foodsRepository
  )
  {
    _repository = foodsRepository;
  }

  public Response<FoodDto> GetById(int foodId)
  {
    throw new NotImplementedException();
  }
}