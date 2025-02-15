using Fittude.Domain.Models.Enums;

namespace Fittude.Domain.Models.Dtos.Getters;
public class UserFitnessDto
{
  public float Height { get; set; }
  public float Weight { get; set; }
  public GenderEnum Gender { get; set; }
  public DateTime BirthDay { get; set; }
}