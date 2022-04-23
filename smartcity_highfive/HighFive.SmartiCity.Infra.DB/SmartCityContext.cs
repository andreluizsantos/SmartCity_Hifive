using HighFive.SmartCity.Domain.Entity;
using Microsoft.EntityFrameworkCore;
using System;

namespace HighFive.SmartiCity.Infra.DB
{
    public class SmartCityContext : DbContext
    {
        public SmartCityContext(DbContextOptions<SmartCityContext> options) : base(options)
        { 
        }

        public DbSet<UsuarioPontosHistorico> UsuarioPontosHistorico { get; set; }
        public DbSet<CategoriaOferta> CategoriaOferta { get; set; }
        public DbSet<TipoMovimentacaoHistorico> TipoMovimentacaoHistorico { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<UsuarioCompraOferta> UsuarioCompraOferta { get; set; }
        public DbSet<UsuarioOferta> UsuarioOferta { get; set; }
        public DbSet<UsuarioOfertaDisponibilidade> UsuarioOfertaDisponibilidade { get; set; }
        public DbSet<UsuarioOfertaAvaliacao> UsuarioOfertaAvaliacao { get; set; }


    }
}
