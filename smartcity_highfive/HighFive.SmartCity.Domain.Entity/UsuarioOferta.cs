using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_usuario_oferta")]
    public class UsuarioOferta
    {
		public UsuarioOferta()
        {
        }

		[Column("id_oferta")]
		[Key]
		[Required]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int Id { get; set; }

		//@ManyToOne
		[Column("id_usuario")]
		[Required]
		public Usuario Usuario { get; set; }

		//@ManyToOne
		[Column("id_categoriaoferta")]
		[Required]
		public CategoriaOferta Categoria { get; set; }

		//@OneToMany(mappedBy = "oferta")
		public ICollection<UsuarioOfertaDisponibilidade> DatasDisponiveis { get; set; }

		[Column("nm_oferta")]
		[MaxLength(250)]
		[Required]
		public string Oferta { get; set; }

		[Column("ds_oferta")]
		[MaxLength(800)]
		public string Descricao { get; set; }


		[Column("qt_horas_duracao")]
		[Required]
		public int HorasDuracao { get; set; }

		[Column("vl_pontos")]
		[Required]
		public decimal Pontos { get; set; }

		[Column("dh_criacao")]
		[Required]
		public DateTime DataCriacao { get; set; }

		[Column("dh_atualizacao")]
		[Required]
		public DateTime DataAtualizacao { get; set; }
	}
}