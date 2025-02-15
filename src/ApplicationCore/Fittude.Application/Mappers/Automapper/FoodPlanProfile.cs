using AutoMapper;
using Fittude.Domain.Models.Dtos.Getters;
using Fittude.Domain.Models.Entities;

namespace Fittude.Application.Mappers.AutoMapper;

public class FoodPlanProfile : Profile
{
  public FoodPlanProfile()
  {
    // Source - Destination
    CreateMap<FoodPlan, FoodPlanDto>();
  }
}