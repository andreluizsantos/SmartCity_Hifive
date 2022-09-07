using HighFive.SmartCity.Domain.Entity;
using HighFive.SmartCity.Domain.Interface.Application;
using HighFive.SmartCity.Domain.Interface.Domain;
using HighFive.SmartCity.Domain.Service;
using System;
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

        public async Task<Usuario> Login(Usuario usuario)
        {
            return _service.Login(usuario.Login, usuario.Senha);
        }



        public void Dispose()
        {

            GC.SuppressFinalize(this);
        }
    }
}
