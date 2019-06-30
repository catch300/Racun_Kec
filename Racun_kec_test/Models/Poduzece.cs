using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Racun_kec_test.Models
{
    [Table("poduzece")]
    public  class Poduzece
    {
        
        [Key]
        public int id_poduzece { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Naziv")]
        public string naziv { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Adresa")]
        public string adresa { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Grad")]
        public string grad { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Drzava")]
        public string drzava { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [DataType(DataType.PhoneNumber, ErrorMessage = "{0} mora biti broj!")]
        [Display(Name = "Telefon")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:### ### ###}")]
        public long tel { get; set; }

        
        //[Range(0.0, long.MaxValue, ErrorMessage = "{0} ne smije biti negativna!")]
        [DataType(DataType.PhoneNumber, ErrorMessage ="{0} mora biti broj!")]
        [Display(Name = "Mobitel")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:### ### ###}")]
        public long mob { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*", ErrorMessage = "Upisali ste nevaljanu email adresu")]
        [Display(Name = "Email adresa")]
        public string email { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Range(0.0, long.MaxValue, ErrorMessage = "{0} ne smije biti negativna!")]
        [Display(Name = "OIB")]
        public long oib { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Odgovorna osoba")]
        public string odgovorna_osoba { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Ziro racun")]
        public string ziro_racun { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Banka")]
        public string banka { get; set; }


        public virtual ICollection<Korisnik> Korisnici{ get; set; }
        public virtual ICollection<Racun> Racuni { get; set; }

    }
}