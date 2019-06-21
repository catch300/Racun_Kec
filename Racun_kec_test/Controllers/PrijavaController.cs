using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using Microsoft.Ajax.Utilities;
using Racun_kec_test.BazaPovezivanje;
using Racun_kec_test.Models;


namespace Racun_kec_test.Controllers
{
    

    public class PrijavaController : Controller
    {

        private  BazaDbContext _dbContext = new BazaDbContext();


        [HttpGet]
        public ActionResult Prijava()
        {
            Login obj = new Login();
            return View(obj);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Prijava (Login obj)
        {

            foreach (Korisnik kor in _dbContext.Korisnici)
            {
                if (ModelState.IsValid)
                {
                    if (kor.lozinka == obj.lozinka && kor.email == obj.email)
                    {
                        // SELECT * FROM student WHERE id_student == SESSION[]
                        Session["UserID"] = kor.id_korisnik;
                        Session["Username"] = kor.ime_prezime;
                        return RedirectToAction("Index", "Racun");
                    }
                   
                }
            }
            ViewBag.Message = "Lozinka ili email su netočni, pokušajte ponovno!";
            return RedirectToAction("Prijava");

            }
        [HttpGet]
        public ActionResult Registracija()
        {

            Korisnik k = new Korisnik();
            return View(k);
        }

        [HttpPost]
        public ActionResult Registracija(Korisnik k )
        {
            var provjeraEmaila = _dbContext.Korisnici.Where(m => m.email == k.email).SingleOrDefault(); //checking if the emailid already exits for any user

            if (ModelState.IsValid)
            {

                if (provjeraEmaila == null)
                {
                    _dbContext.Korisnici.Add(k);
                    try
                    {
                        _dbContext.SaveChanges();
                    }
                    catch (NullReferenceException ex)
                    {
                        ViewBag.greska = "Registracija nije uspješna, pokušajte ponovno!";
                        return View("Registracija");
                    }



                    TempData["ErrorMessage"] = "Registracija je uspješna!";
                    return RedirectToAction("Prijava", "Prijava");

                }
                else
                {
                    ViewBag.Message = "Korisnik s tom Email adresom već postoji!";
                    return View("Registracija");
                }
            }

            else
            {
                return View("Registrcija");
            }


        }

        public ActionResult Zaboravljena_lozinka()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        

    }
}