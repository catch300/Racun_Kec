using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Racun_kec_test.Models;
using Racun_kec_test.BazaPovezivanje;
using System.Net.Http;


namespace Racun_kec_test.Controllers
{
    
    public class KorisnikController : Controller
    {


        BazaDbContext baza = new BazaDbContext();



        // GET: Korisnik
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Index_korisnik()
        {
            if (Session["UserID"] == null)
            {
                return RedirectToAction("Prijava", "Prijava");
            }
            return View(baza.Korisnici);
        }

        public ActionResult Odjava()
        {
            Session["UserID"] = null;
            Session["Username"] = null;
            return RedirectToAction("Prijava", "Prijava");
        }

        public ActionResult osobni_podaci()
        {
            if (Session["UserID"] == null)
            {
                return RedirectToAction("Prijava", "Prijava");
            }
            else
            {
                List<Korisnik> lista = baza.Korisnici.ToList();
                return View(lista);
            }
        }

        public ActionResult UrediKorisnika(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Korisnik korisnik = baza.Korisnici.Find(id);
            korisnik.licenca = DateTime.Now;
            if (korisnik == null)
            {
                return HttpNotFound();
            }


            ViewData["Poduzece"] = new SelectList(baza.Poduzeca, "id_poduzece", "naziv");
            return View(korisnik);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UrediKorisnika([Bind(Include = "id_korisnik,ime_prezime,email,lozinka,licenca,aktivan,id_poduzece")] Korisnik korisnik)
        {


            if (ModelState.IsValid)
            {

                baza.Entry(korisnik).State = EntityState.Modified;
                baza.SaveChanges();
                return RedirectToAction("osobni_podaci");
            }

            ViewData["Poduzece"] = new SelectList(baza.Poduzeca, "id_poduzece", "naziv");
            return View(korisnik);
        }

        //PODUZEĆE
        // GET: Poduzece
        public ActionResult PoduzeceIndex()
        {
            if (Session["UserID"] == null)
            {
                return RedirectToAction("Prijava", "Prijava");
            }
            else
            {

                BazaDbContext baza = new BazaDbContext();
                List<Poduzece> listaPoduzeca = baza.Poduzeca.ToList();
                return View(listaPoduzeca);
            }
        }

        // GET: Poduzece/Details/5
        public ActionResult DetaljiPoduzeca(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Poduzece p = baza.Poduzeca.SingleOrDefault(s => s.id_poduzece == id);
            List<Poduzece> lista = new List<Poduzece>();
            lista.Add(p);
            if (p == null)
            {
                return HttpNotFound();
            }
            return View(lista);
        }

        // GET: Poduzece/Create
        public ActionResult KreiranjePoduzeca()
        {
            Poduzece poduzece = new Poduzece();
            return View(poduzece);
        }

        // POST: Poduzece/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult KreiranjePoduzeca([Bind(Include = "id_poduzece, naziv,adresa,grad,drzava,tel,mob,email,oib,odgovorna_osoba,ziro_racun,banka")] Poduzece poduzece)
        {
            if (ModelState.IsValid)
            {
                baza.Poduzeca.Add(poduzece);
                baza.SaveChanges();

                return RedirectToAction("PoduzeceIndex");
            }

            return View(poduzece);
        }

        // GET: Poduzece/Edit/5
        public ActionResult UrediPoduzece(int? id)
        {
            Session["UserID"] = id;
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Poduzece poduzece = baza.Poduzeca.Find(id);
            if (poduzece == null)
            {
                return HttpNotFound();
            }
            return View(poduzece);
        }

        // POST: Poduzece/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UrediPoduzece([Bind(Include = "id_poduzece,naziv,adresa,grad,drzava,tel,mob,email,oib,odgovorna_osoba,ziro_racun,banka,pdv,biljeska, pecat")] Poduzece poduzece)
        {

            if (ModelState.IsValid)
            {
                baza.Entry(poduzece).State = EntityState.Modified;
                baza.SaveChanges();
                return RedirectToAction("PoduzeceIndex");
            }
            return View(poduzece);
        }

        // GET: Poduzece/Delete/5
        public ActionResult BrisanjePoduzeca(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Poduzece poduzece = baza.Poduzeca.Find(id);
            if (poduzece == null)
            {
                return HttpNotFound();
            }
            return View(poduzece);
        }

        // POST: Poduzece/Delete/5
        [HttpPost, ActionName("BrisanjePoduzeca")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Poduzece poduzece = baza.Poduzeca.Find(id);
            baza.Poduzeca.Remove(poduzece);
            baza.SaveChanges();
            return RedirectToAction("Prijava", "Prijava");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                baza.Dispose();
            }
            base.Dispose(disposing);
        }

    }
}