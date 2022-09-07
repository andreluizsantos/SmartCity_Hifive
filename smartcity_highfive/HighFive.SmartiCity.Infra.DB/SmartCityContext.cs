using HighFive.SmartCity.Domain.Entity;
using HighFive.SmartCity.Domain.Interface.Infra;
using Microsoft.EntityFrameworkCore;
using System;

namespace HighFive.SmartCity.Infra.DB
{
    public class SmartCityContext : DbContext
    {
        public SmartCityContext(DbContextOptions<SmartCityContext> options) : base(options)
        {

            this.Database.EnsureCreated();
        }

        public SmartCityContext(string connString)
        {
            this.Database.SetConnectionString(connString);
            this.Database.EnsureCreated();
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
