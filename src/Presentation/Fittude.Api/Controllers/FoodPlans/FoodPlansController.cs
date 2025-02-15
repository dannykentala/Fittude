using Fittude.Domain.Interfaces.Managers;
using Microsoft.AspNetCore.Mvc;

namespace Fittude.Api.Controllers.FoodPlans
{
  [Route("api/foodPlans")]
  [ApiController]
  public class FoodPlansController: ControllerBase
  {
    private readonly IFoodPlansManager _manager;
    public FoodPlansController(IFoodPlansManager invitationsManager)
    {
      _manager = invitationsManager;
    }

    [HttpGet("{Id}")]
    public IActionResult GetById(int id)
    {
      return Ok(_manager.GetById(id));
    }
  }
}