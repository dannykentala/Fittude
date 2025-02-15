using AutoMapper;
using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Models.Entities;

namespace Fittude.Application.Mappers.AutoMapper;

public class FoodProfile : Profile
{
  public FoodProfile()
  {
    // Source - Destination
    CreateMap<Food, FoodDto>();
  }
}