using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_usuario_oferta_avaliacao")]
	public class UsuarioOfertaAvaliacao
    {
		public UsuarioOfertaAvaliacao()
        {

        }

		[Column("id_avaliacao")]
		[Key]
		[Required]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)] 
		public int Id { get; set; }

		//@ManyToOne
		[Column("id_oferta")]
		[Required]
		public UsuarioOferta Oferta { get; set; }

		//@ManyToOne
		[Column("id_usuario")]
		[Required]
		public Usuario Avaliador { get; set; }

		[Column("ds_avaliacao")]
		[MaxLength(800)] 
		public string Avaliacao { get; set; }

		[Column("vl_nota")]
		[Required]
		public int Nota { get; set; }
	}
}
