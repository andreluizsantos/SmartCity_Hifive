using HighFive.SmartCity.Domain.Entity;
using HighFive.SmartCity.Domain.Interface.Application;
using HighFive.SmartCity.Domain.Interface.Domain;
using HighFive.SmartCity.Domain.Service;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HighFive.SmartCity.Application
{
    public class SmartCityApplication : ISmartCityApplication
    {
        protected readonly ISmartCityService _service;
        public SmartCityApplication(ISmartCityService service)
        {
            _service = service;
        }


        public async Task<CategoriaOferta> AddCategoria (string nomeCategoria)
        {
            return _service.AddCategoria(nomeCategoria);
        }

        public async Task<string> GetTeste()
        {
            return "Funcionou";
        }

        public async Task<Usuario> AddUsuario(Usuario usuario)
        {
            return _service.CadastraUsuario(usuario);
        }

        public async Task<Usuario> Login(string login, string senha)
        {
            return _service.Login(login, senha);
        }

        public async Task<List<UsuarioOferta>> BuscarUsuarioOferta(string nome, int minPontos, int maxPontos, int minCargaHoraria, int maxCargaHoraria)
        {
            return _service.BuscarUsuarioOferta(nome, minPontos, maxPontos, minCargaHoraria, maxCargaHoraria);
        }

        public void Dispose()
        {

            GC.SuppressFinalize(this);
        }
    }
}
