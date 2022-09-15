using HighFive.SmartCity.Domain.Entity;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HighFive.SmartCity.Domain.Interface.Application
{
    public interface ISmartCityApplication 
    {
        Task<string> GetTeste();
        Task<CategoriaOferta> AddCategoria(string nomeCategoria);


        Task<Usuario> AddUsuario(Usuario usuario);

        Task<Usuario> Login(string login, string senha);

        Task<List<UsuarioOferta>> BuscarUsuarioOferta(string nome, int minPontos, int maxPontos, int minCargaHoraria, int maxCargaHoraria);
    }
}
