using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_usuario_oferta_disponibilidade")]
    public class UsuarioOfertaDisponibilidade
	{ 
		public UsuarioOfertaDisponibilidade()
        {

        }

		[Column("id_disponibilidade")]
		[Key]
		[Required]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)] 
		public int Id { get; set; }

		//@ManyToOne
		[Column("id_oferta")]
		[Required]
		public UsuarioOferta Oferta { get; set; }

		[Column("dh_disponibilidade")]
		[Required]
		public DateTime DataDisponibilidade { get; set; }

		[Column("dh_criacao")]
		[Required]
		public DateTime DataCriacao { get; set; }

		[Column("dh_atualizacao")]
		[Required]
		public DateTime DataAtualizacao { get; set; }


	}
}