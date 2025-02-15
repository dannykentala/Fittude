using Fittude.Domain.Models.Enums;

namespace Fittude.Domain.Models.Entities;

public class FoodPlan
{
  public int Id { get; set; }
  public int UserId { get; set; }
  public int FoodId { get; set; }
  public WeekDayEnum WeekDay { get; set; }
  public EatTimeEnum EatTime { get; set; }
  public float PortionAmount { get; set; }
}