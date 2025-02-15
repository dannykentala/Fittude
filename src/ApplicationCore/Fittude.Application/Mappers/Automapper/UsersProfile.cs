using AutoMapper;
using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Models.Entities;

namespace Fittude.Application.Mappers.AutoMapper;

public class UserProfile : Profile
{
  public UserProfile()
  {
    // Source - Destination
    CreateMap<User, UserDto>();
  }
}