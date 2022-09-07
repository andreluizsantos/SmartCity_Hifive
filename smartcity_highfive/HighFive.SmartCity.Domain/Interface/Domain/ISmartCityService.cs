using HighFive.SmartCity.Domain.Entity;

namespace HighFive.SmartCity.Domain.Interface.Domain
{
    public interface ISmartCityService
    {
        CategoriaOferta AddCategoria(string nomeCategoria);


        Usuario Login(string usuario, string senha);
        Usuario CadastraUsuario(Usuario usuario);

    }
}
