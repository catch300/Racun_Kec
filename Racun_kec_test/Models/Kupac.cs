using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.Mvc;

namespace Racun_kec_test.Models
{
    [Table("kupac")]
    public class Kupac
    {
        [Key]
        public int id_kupac { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Ime i prezime")]
        public string ime_prezime { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Adresa")]
        public string adresa { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Grad")]
        public string grad { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Država")]
        public string  drzava { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Range(0.0, long.MaxValue, ErrorMessage = "{0} ne smije biti negativna!")]
        [Display(Name = "OIB")]
        public long oib { get; set; }

        public virtual ICollection<Racun> Racuni{ get; set; }

    }
}