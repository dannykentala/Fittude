namespace Fittude.Domain.Interfaces.Managers;

public interface IBaseManager<T> where T: class
{
  T GetById(int id);
}