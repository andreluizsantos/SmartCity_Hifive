using HighFive.SmartCity.Domain.Entity;
using System.Collections.Generic;

namespace HighFive.SmartCity.Domain.Interface.Infra
{
    public interface ISmartCityRepository
    {
        CategoriaOferta AddCategoriaOferta(string nomeCategoria);



        Usuario GetUsuario(int idUsuario);

        Usuario GetUsuario(string login);

        Usuario AddUsuario(Usuario usuario);

        List<UsuarioOferta> BuscarUsuarioOferta(string nome, int minPontos, int maxPontos, int minCargaHoraria, int maxCargaHoraria);
    }
}
