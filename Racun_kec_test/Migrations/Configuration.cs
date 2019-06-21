namespace Racun_kec_test.Migrations
{
    using Racun_kec_test.Models;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Racun_kec_test.BazaPovezivanje.BazaDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(Racun_kec_test.BazaPovezivanje.BazaDbContext context)
        {
            var kupci = new List<Kupac>
            {
                new Kupac {id_kupac=1, ime_prezime = "Pero Peric",   adresa = "Istarska Ulica 12A",
                    grad = "Cakovec", drzava= "Hrvatska", oib=98957602001 },
                new Kupac {id_kupac=2, ime_prezime = "Ivo Ivic",   adresa = "Pakrac 50A",
                    grad = "Pakrac", drzava= "Hrvatska", oib=98957602002 },
                new Kupac {id_kupac=3, ime_prezime = "Ana Anic",   adresa = "Dugo Selo 16",
                    grad = "Dugo Selo", drzava= "Hrvatska", oib=98957602003 }
                
            };
            kupci.ForEach(s => context.Kupci.AddOrUpdate(p => p.ime_prezime, s));
            context.SaveChanges();

            var korisnici = new List<Korisnik>
            {
                new Korisnik {id_korisnik = 1, ime_prezime = "Admin",  email="admin@mev.hr",lozinka="admin123",  aktivan= "DA", licenca=DateTime.Parse("08-05-2019") },
                new Korisnik {id_korisnik = 2, ime_prezime = "Mario",  email="mario@mev.hr",lozinka="admin123",  aktivan= "DA", licenca=DateTime.Parse("08-05-2019") }
                
            };
            korisnici.ForEach(s => context.Korisnici.AddOrUpdate(p => p.ime_prezime, s));
            context.SaveChanges();

            var poduzeca = new List<Poduzece>
            {
                new Poduzece {id_poduzece = 1,  naziv= "T-COM",  email="tcom@gmail.com", adresa="Roberta Frangeša Mihanoviæa 9", grad="Zagreb", drzava="Hrvatska", mob=08009000, tel=08009000, odgovorna_osoba="Ana Anic", banka="PBZ", oib=98957602010, ziro_racun="10001"   },
               
            };
            poduzeca.ForEach(s => context.Poduzeca.AddOrUpdate(p => p.naziv, s));
            context.SaveChanges();

            var racuni = new List<Racun>
            { 
            new Racun
            {
                id_racun = 1,  naslov= "Prvi Racun", broj_racuna=1, datum_izdavanja=DateTime.Parse("08-05-2019"), oznaka="01/2019", pdv=25,
                id_kupac = kupci.Single(s => s.ime_prezime == "Pero Peric").id_kupac,

            },
                 new Racun
                 { id_racun = 2,  naslov= "Drugi Racun", broj_racuna=2, datum_izdavanja=DateTime.Parse("08-05-2019"), oznaka="02/2019", pdv=25,
                 id_kupac = kupci.Single(s => s.ime_prezime == "Ivo Ivic").id_kupac,
                 },
            };
            foreach (Racun e in racuni)
            {
                var enrollmentInDataBase = context.Racuni.Where(
                    s =>
                         s.Kupac.id_kupac== e.id_kupac).SingleOrDefault();
                if (enrollmentInDataBase == null)
                {
                    context.Racuni.Add(e);
                }
            }
            context.SaveChanges();

            var usluge = new List<Usluga>
            {
                new Usluga {
                     id_usluga= 1, naziv= "Usluga 1", cijena= 120, mjerna_jedinica="kg",
                     id_racun = racuni.Single(s=> s.naslov == "Prvi Racun").id_racun
                },

                new Usluga {
                     id_usluga= 2, naziv= "Usluga 2", cijena= 120, mjerna_jedinica="kg",
                     id_racun = racuni.Single(s=> s.naslov == "Drugi Racun").id_racun
                },
            };
            foreach (Usluga e in usluge)
            {
                var enrollmentInDataBase = context.Usluge.Where(
                    s =>
                         s.Racun.id_racun == e.id_racun).SingleOrDefault();
                if (enrollmentInDataBase == null)
                {
                    context.Usluge.Add(e);
                }
            }
            context.SaveChanges();

            var stavke = new List<Stavke_racuna>
            {
                new Stavke_racuna {
                     id_stavke_racuna= 1, Artikl= "Artikl 1", kolicina= 10, cijena= 120, pdv=25 , Vrijeme=DateTime.Parse("08-05-2019"),
                     id_racun = racuni.Single(s=> s.naslov == "Prvi Racun").id_racun
                },

                new Stavke_racuna {
                     id_stavke_racuna= 2, Artikl= "Artikl 2", kolicina= 10, cijena= 120, pdv=25 , Vrijeme=DateTime.Parse("08-05-2019"),
                     id_racun = racuni.Single(s=> s.naslov == "Drugi Racun").id_racun
                },
            };
            foreach (Stavke_racuna e in stavke)
            {
                var enrollmentInDataBase = context.Stavke_racuna.Where(
                    s =>
                         s.Racun.id_racun == e.id_racun).SingleOrDefault();
                if (enrollmentInDataBase == null)
                {
                    context.Stavke_racuna.Add(e);
                }
            }
            context.SaveChanges();
        }
    }
}
