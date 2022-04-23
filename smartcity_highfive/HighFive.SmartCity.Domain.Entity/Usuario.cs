using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HighFive.SmartCity.Domain.Entity
{
    [Table("tbl_usuario")]
    public class Usuario
    {
        public Usuario()
        {
        }

        [Column("id_usuario")]
        [Key]
        [Required]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Column("nm_usuario")]
        [MaxLength(180)]
        [Required]
        public string Nome { get; set; }

        [Column("ds_login")]
        [MaxLength(100)]
        [Required]
        public string Login { get; set; }

        [Column("ds_senha")]
        [MaxLength(50)]
        [Required]
        public string Senha { get; set; }

        [Column("ds_bio")]
        [MaxLength(300)]
        public string Biografia { get; set; }

        [Column("dh_criacao")]
        [Required]
        public DateTime DataCriacao { get; set; }

        [Column("dh_atualizacao")]
        [Required]
        public DateTime DataAtualizacao { get; set; }
    }

}