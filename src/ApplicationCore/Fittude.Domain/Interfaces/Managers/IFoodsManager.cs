using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Responses;

namespace Fittude.Domain.Interfaces.Managers;

public interface IFoodsManager: IBaseManager<Response<FoodDto>>
{
}