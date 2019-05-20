using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using MySql.Data.Entity;
using Racun_kec_test.Models;



namespace Racun_kec_test.BazaPovezivanje
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class BazaDbContext : DbContext
    {
        public DbSet<Kupac> Kupci{ get; set; }

        public  DbSet<Poduzece> Poduzeca { get; set; }

        public DbSet<Racun> Racuni { get; set; }

        public DbSet<Stavke_racuna> Stavke_racuna { get; set; }

        public DbSet<Usluga> Usluge { get; set; }

        public DbSet<Korisnik> Korisnici { get; set; }

        
    }
    
}  
