using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Racun_kec_test.Models
{
    [Table("stavke_racuna")]
    public class Stavke_racuna
    {
        
        [Key]
        public int id_stavke_racuna { get; set; }

        
        public int id_racun { get; set; }
        public virtual Racun Racun { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Artikli")]
        public string Artikl { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Range(1, 100000, ErrorMessage = "Količina ne smije biti negativan broj")]
        public int kolicina { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Range(0.01, 999999999, ErrorMessage = "Cijena ne smije biti negativan broj")]
        [DisplayFormat(DataFormatString = "{0:#.##}", ApplyFormatInEditMode = true)]
        public decimal cijena { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Range(0.00, 100, ErrorMessage = "PDV mora biti između 0 i 100")]
        public decimal pdv { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Vrijeme kreiranja")]
        //ako ne napišemo fiksno ovaj format Google Chrome nece dobro prikazati datumsko
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yy}", ApplyFormatInEditMode = true)]
        public DateTime Vrijeme { get; set; }


        #region Calculated Fields
        
        public decimal Ukupno
        {
            get
            {
                return kolicina * cijena;
            }
        }
        
        public decimal IzracunPDV
        {
            get
            {
                return UkupnoPlusPDV - Ukupno;
            }
        }
        
        public decimal UkupnoPlusPDV
        {
            get
            {
                return Ukupno * (1 + pdv / 100);
            }
        }

        #endregion
    }
}