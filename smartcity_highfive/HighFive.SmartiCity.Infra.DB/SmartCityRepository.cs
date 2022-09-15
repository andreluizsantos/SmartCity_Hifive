using HighFive.SmartCity.Domain.Entity;
using HighFive.SmartCity.Domain.Interface.Infra;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HighFive.SmartCity.Infra.DB
{
    public class SmartCityRepository : ISmartCityRepository

    {
        private readonly SmartCityContext _context;
        
       
        public SmartCityRepository(SmartCityContext context)
        {

            _context = context;
        }

        public CategoriaOferta AddCategoriaOferta(string nomeCategoria)
        {
            var categoria = new CategoriaOferta { Categoria = nomeCategoria };
            
            _context.Set<CategoriaOferta>().Add(categoria);
            _context.SaveChanges();

            return categoria;
        }


        public Usuario GetUsuario(int idUsuario)
        {
            return _context.Usuario.FirstOrDefault(x => x.Id == idUsuario);
        }

        public Usuario GetUsuario(string login)
        {
            return _context.Usuario.FirstOrDefault(x => x.Login == login);
        }

        public Usuario AddUsuario(Usuario usuario)
        {
            _context.Set<Usuario>().Add(usuario);
            _context.SaveChanges();

            return usuario;
        }

        

        public List<UsuarioOferta> BuscarUsuarioOferta(string nome, int minPontos, int maxPontos, int minCargaHoraria, int maxCargaHoraria)
        {
            return _context.UsuarioOferta.Where(x => x.Oferta.Contains(nome??string.Empty)
                                            && x.Pontos >= minPontos
                                            && x.Pontos <= maxPontos
                                            && x.HorasDuracao >= minCargaHoraria
                                            && x.HorasDuracao <= maxCargaHoraria).ToList();

        }
    }
}
