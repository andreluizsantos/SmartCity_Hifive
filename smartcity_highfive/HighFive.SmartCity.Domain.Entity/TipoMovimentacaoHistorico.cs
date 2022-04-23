using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_tipo_movimentacao_historico")]
    public class TipoMovimentacaoHistorico
    {
        public TipoMovimentacaoHistorico()
        {
        }

        [Column("id_movimentacao_tipo")]
        [Key]
        [Required]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Column("nm_tipo_movimentacao")]
        [MaxLength(180)]
        [Required]
        public string Movimentacao { get; set; }
    }
}
