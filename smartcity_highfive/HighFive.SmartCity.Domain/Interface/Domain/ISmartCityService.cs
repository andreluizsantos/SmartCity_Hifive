using HighFive.SmartCity.Domain.Entity;
using System.Collections.Generic;

namespace HighFive.SmartCity.Domain.Interface.Domain
{
    public interface ISmartCityService
    {
        CategoriaOferta AddCategoria(string nomeCategoria);


        Usuario Login(string usuario, string senha);
        Usuario CadastraUsuario(Usuario usuario);
        List<UsuarioOferta> BuscarUsuarioOferta(string nome, int minPontos, int maxPontos, int minCargaHoraria, int maxCargaHoraria);
    }
}
