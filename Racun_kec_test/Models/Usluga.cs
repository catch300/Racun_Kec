using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.Mvc;

namespace Racun_kec_test.Models
{
    [Table("usluge")]
    public class Usluga
    {

        [Key]
        public int id_usluga { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Naziv")]
        public string naziv { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Range(0.0, double.MaxValue, ErrorMessage = "{0} ne smije biti negativna!")]
        [Display(Name = "Cijena")]
        public double cijena { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [Display(Name = "Mjerna jedinica")]
        public string mjerna_jedinica { get; set; }

        [NotMapped]
        public List<SelectListItem> mjerne_jedinice { get; set; }
        public List<SelectListItem> DohvatiMjerneJedinice()
        {
            List<SelectListItem> myList = new List<SelectListItem>();
            var data = new[]{
                 new SelectListItem{ Value="1",Text="t"},
                 new SelectListItem{ Value="2",Text="kg"},
                 new SelectListItem{ Value="3",Text="g"},
                 new SelectListItem{ Value="4",Text="km"},
                 new SelectListItem{ Value="5",Text="m"},
                 new SelectListItem{ Value="6",Text="cm"},
                 new SelectListItem{ Value="7",Text="l"},
                 new SelectListItem{ Value="1",Text="dl"},
                 new SelectListItem{ Value="2",Text="cl"},

             };
            myList = data.ToList();
            return myList;
        }


        public int id_racun { get; set; }
        public virtual Racun Racun { get; set; }

    }
}