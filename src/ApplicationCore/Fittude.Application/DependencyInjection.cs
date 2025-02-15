using Fittude.Application.Managers;
using Fittude.Application.Mappers.AutoMapper;
using Fittude.Domain.Interfaces.Managers;
using Microsoft.Extensions.DependencyInjection;

namespace Fittude.Application;
public static class DependencyInjection
{
  public static IServiceCollection AddApplication (this IServiceCollection services)
  {
    //----- Automapers
    services.AddAutoMapper(typeof(UserProfile));
    services.AddAutoMapper(typeof(FoodProfile));
    services.AddAutoMapper(typeof(FoodPlanProfile));

    //----- Managers
    services.AddScoped<IUsersManager, UsersManager>();
    services.AddScoped<IFoodsManager, FoodsManager>();
    services.AddScoped<IFoodPlansManager, FoodPlansManager>();

    //----- Generators

    return services;
  }
}