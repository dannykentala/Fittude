using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Responses;

namespace Fittude.Domain.Interfaces.Managers;

public interface IUsersManager: IBaseManager<Response<UserDto>>
{
}