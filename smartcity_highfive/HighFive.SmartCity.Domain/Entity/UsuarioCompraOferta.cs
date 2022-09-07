using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_usuario_compra_oferta")]
    public class UsuarioCompraOferta
    {
		public UsuarioCompraOferta()
		{ 
		}

		[Column("id_compra")]
		[Key]
		[Required]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int Id { get; set; }

		//@ManyToOne
		[Column("id_disponibilidade")]
		[Required]
		public UsuarioOfertaDisponibilidade OfertaDisponibilidade { get; set; }

		//@ManyToOne
		[Column("id_usuario")]
		[Required]
		public Usuario UsuarioComprador { get; set; }

		[Column("dh_criacao")]
		[Required]
		public DateTime DataCriacao { get; set; }

		[Column("dh_atualizacao")]
		[Required]
		public DateTime DataAtualizacao { get; set; }

	}
}
