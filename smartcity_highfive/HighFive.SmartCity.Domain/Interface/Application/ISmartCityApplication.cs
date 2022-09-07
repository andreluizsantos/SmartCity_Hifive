using HighFive.SmartCity.Domain.Entity;
using System.Threading.Tasks;

namespace HighFive.SmartCity.Domain.Interface.Application
{
    public interface ISmartCityApplication 
    {
        Task<string> GetTeste();
        Task<CategoriaOferta> AddCategoria(string nomeCategoria);


        Task<Usuario> AddUsuario(Usuario usuario);

        Task<Usuario> Login(Usuario usuario);
    }
}
