using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_categoria_oferta")]
    public class CategoriaOferta
    {

        public CategoriaOferta()
        {
        }

        [Column("id_categoriaoferta")]
        [Key]
        [Required]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Column("nm_categoria")]
        [MaxLength(180)]
        [Required]
        public string Categoria { get; set; }
    }
}
