﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Racun_kec_test.Models
{
    public class Login
    {
        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} je obavezan podatak")]
        [DataType(DataType.EmailAddress)]
        [Display(Name = "Email adresa")]
        public string email { get; set; }

        [Display(Name = "Lozinka")]
        public string lozinka { get; set; }

        [Display(Name = "Ponovno upisite lozinku")]
        public string lozinkaConfim { get; set; }
    }
}