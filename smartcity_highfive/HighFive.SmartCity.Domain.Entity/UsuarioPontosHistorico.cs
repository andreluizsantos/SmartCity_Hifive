using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_usuario_pontos_historico")]
    public class UsuarioPontosHistorico
    {
		public UsuarioPontosHistorico()
		{ 
		}
		
		[Column("id_pontos_historico")]
		[Key]
		[Required]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int Id { get; set; }

		//@ManyToOne
		[Column("id_usuario")]
		[Required]
		public Usuario Usuario { get; set; }

		//@ManyToOne
		[Column("id_movimentacao_tipo")]
		[Required]
		public TipoMovimentacaoHistorico TipoMovimentacao { get; set; }

		[Column("ds_movimentacao")]
		[MaxLength(180)]
		public string Descricao { get; set; }

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
