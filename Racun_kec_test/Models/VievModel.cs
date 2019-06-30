using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Web;
using Racun_kec_test.Models;

namespace Racun_kec_test.Models
{
    public class VievModel
    {
        public Racun Racuni { get; set; }
        public Stavke_racuna Stavke_racuna { get; set; }
        public Poduzece Poduzeca { get; set; }
        public Kupac Kupac { get; set; }

    }
}