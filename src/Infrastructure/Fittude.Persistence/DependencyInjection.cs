using Fittude.Domain.Interfaces.Repositories;
using Fittude.Persistence.Repository;
using Microsoft.Extensions.DependencyInjection;

namespace Fittude.Persistence;

public static class DependencyInjection
{
  public static IServiceCollection AddPersistence(this IServiceCollection services)
  {
    //----- BaseContext

    //----- Repositories
    services.AddScoped<IUsersRepository, UsersRepository>();
    services.AddScoped<IFoodsRepository, FoodsRepository>();
    services.AddScoped<IFoodPlansRepository, FoodPlansRepository>();

    return services;
  }
}