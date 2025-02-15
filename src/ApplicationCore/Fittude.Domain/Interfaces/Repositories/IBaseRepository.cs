namespace Fittude.Domain.Interfaces.Repositories;

public interface IBaseRepository<T> where T: class
{
  T GetById(int id);
}