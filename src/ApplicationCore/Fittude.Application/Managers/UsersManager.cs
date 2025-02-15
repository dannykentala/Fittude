using Fittude.Domain.Interfaces.Managers;
using Fittude.Domain.Interfaces.Repositories;
using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Responses;

namespace Fittude.Application.Managers;

public class UsersManager: IUsersManager
{
  private readonly IUsersRepository _repository;
  public UsersManager
  (
    IUsersRepository usersRepository
  )
  {
    _repository = usersRepository;
  }
  
  public Response<UserDto> GetById(int userId)
  {
    throw new NotImplementedException();
  }
}