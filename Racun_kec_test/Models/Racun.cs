using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Racun_kec_test.Models
{
    [Table("racun")]
    public class Racun
    {
        public Racun()
        {
            Stavke_Racuna = new List<Stavke_racuna>();
        }

        [Key]
        public int id_racun { get; set; }


        [Display(Name="Broj Računa")]
        public int broj_racuna { get; set; }

        

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Naslov")]
        public string naslov { get; set; }

        
        
        public int id_kupac { get; set; }
        public virtual Kupac Kupac { get; set; }


        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Oznaka")]
        public string oznaka { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Datum izdavanja")]
        //ako ne napišemo fiksno ovaj format Google Chrome nece dobro prikazati datumsko
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yy}", ApplyFormatInEditMode = true)]
        public DateTime datum_izdavanja { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Range(0, int.MaxValue, ErrorMessage = "PDV ne smije biti negativan!")]
        [Display(Name = "PDV (%)")]
        public decimal pdv { get; set; }


        //RAČUN STAVKA
        public virtual ICollection<Stavke_racuna> Stavke_Racuna { get; set; }

        public virtual ICollection<Usluga> Usluge { get; set; }
        #region Calculated Fields
        
        public decimal IzracunPDV
        {
            get
            {
                return this.UkupnoplusPDV - this.NetoUkupno;
            }
        }

      
        public decimal NetoUkupno
        {
            get
            {
                if (Stavke_Racuna == null)
                    return 0;

                return Stavke_Racuna.Sum(i => i.Ukupno);
            }
        }



        
        public decimal UkupnoplusPDV
        {
            get
            {
                if (Stavke_Racuna == null)
                    return 0;

                return Stavke_Racuna.Sum(i => i.UkupnoPlusPDV);
            }
        }

#endregion

    }


}