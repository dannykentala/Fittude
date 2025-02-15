using Fittude.Domain.Models.Enums;

namespace Fittude.Domain.Models.Dtos.Getters;

public class FoodDto
{
  public string Name { get; set; }
  public FoodPreparationEnum Preparation { get; set; }
  public float Calories { get; set; }
  public float Proteins { get; set; }
  public float Carbohydrates { get; set; }
  public float Fibers { get; set; }
}