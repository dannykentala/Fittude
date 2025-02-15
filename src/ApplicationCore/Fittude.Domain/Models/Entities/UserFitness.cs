using Fittude.Domain.Models.Enums;

namespace Fittude.Domain.Models.Entities;
public class UserFitness
{
  public int Id { get; set; }
  public int UserId { get; set; }
  public float Height { get; set; }
  public float Weight { get; set; }
  public GenderEnum Gender { get; set; }
  public DateTime BirthDay { get; set; }
}