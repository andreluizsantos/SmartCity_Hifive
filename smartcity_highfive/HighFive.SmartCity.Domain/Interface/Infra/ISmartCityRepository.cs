using HighFive.SmartCity.Domain.Entity;

namespace HighFive.SmartCity.Domain.Interface.Infra
{
    public interface ISmartCityRepository
    {
        CategoriaOferta AddCategoriaOferta(string nomeCategoria);



        Usuario GetUsuario(int idUsuario);

        Usuario GetUsuario(string login);

        Usuario AddUsuario(Usuario usuario);

    }
}
