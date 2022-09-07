using HighFive.SmartCity.Domain.Entity;
using HighFive.SmartCity.Domain.Interface.Domain;
using HighFive.SmartCity.Domain.Interface.Infra;

namespace HighFive.SmartCity.Domain.Service
{
    public class SmartCityService : ISmartCityService
    {
        protected readonly ISmartCityRepository _db;
        public SmartCityService(ISmartCityRepository db)
        {
            _db = db;
        }

        public CategoriaOferta AddCategoria( string nomeCategoria)
        {
            return _db.AddCategoriaOferta(nomeCategoria);
        }

        #region Usuario

        public Usuario Login (string login, string senha)
        {
            var usuario = _db.GetUsuario(login);

            if (usuario == null || usuario.Id ==0 )
            {
                return null;
            }

            if (usuario.Senha != senha)
            {
                return null;
            }

            return usuario;
        }

        public Usuario CadastraUsuario(Usuario usuario)
        {
            return _db.AddUsuario(usuario);
        }

        #endregion
    }
}
