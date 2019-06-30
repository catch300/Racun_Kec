using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Racun_kec_test.BazaPovezivanje;
using Racun_kec_test.Models;

namespace Racun_kec_test.Controllers
{
    
    public class KupacController : Controller
    {
        private BazaDbContext db = new BazaDbContext();

        // GET: Kupac
        public ActionResult Index()
        {
            if (Session["UserID"] == null)
            {
                return RedirectToAction("Prijava", "Prijava");
            }
            return View(db.Kupci.ToList());
        }

        // GET: Kupac/Details/5
        public ActionResult Details(int? id)
        {

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kupac kupac = db.Kupci.Find(id);
            if (kupac == null)
            {
                return HttpNotFound();
            }
            return View(kupac);
        }

        // GET: Kupac/Create
        public ActionResult Create()
        {

            ViewData["Poduzece"] = new SelectList(db.Poduzeca, "id_poduzece", "naziv");
            return View();
        }

        // POST: Kupac/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_kupac,ime_prezime,adresa,grad,drzava,oib")] Kupac kupac)
        {
            if (ModelState.IsValid)
            {
                db.Kupci.Add(kupac);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewData["Poduzece"] = new SelectList(db.Poduzeca, "id_poduzece", "naziv");
            return View(kupac);
        }

        // GET: Kupac/Edit/5
        public ActionResult Edit(int? id)
        {

            ViewData["Poduzece"] = new SelectList(db.Poduzeca, "id_poduzece", "naziv");

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kupac kupac = db.Kupci.Find(id);
            if (kupac == null)
            {
                return HttpNotFound();
            }
            return View(kupac);
        }

        // POST: Kupac/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_kupac,ime_prezime,naziv,adresa,grad,drzava,oib")] Kupac kupac)
        {
            if (ModelState.IsValid)
            {
                db.Entry(kupac).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewData["Poduzece"] = new SelectList(db.Poduzeca, "id_poduzece", "naziv");
            return View(kupac);
        }

        // GET: Kupac/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kupac kupac = db.Kupci.Find(id);
            if (kupac == null)
            {
                return HttpNotFound();
            }
            return View(kupac);
        }

        // POST: Kupac/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Kupac kupac = db.Kupci.Find(id);
            db.Kupci.Remove(kupac);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        [HttpGet]
        public ActionResult Prijava()
        {
            Login obj = new Login();
            return View(obj);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Prijava(Login obj)
        {

            foreach (Korisnik kor in db.Korisnici)
            {

                if (kor.lozinka == obj.lozinka && kor.email == obj.email)
                {
                    // SELECT * FROM student WHERE id_student == SESSION[]
                    Session["UserID"] = kor.id_korisnik;
                    Session["Username"] = kor.ime_prezime;
                    return RedirectToAction("index_korisnik", "Korisnik");
                }

            }

            ViewBag.Message = "Lozinka ili email su netočni, pokušajte ponovno!";
            return RedirectToAction("Prijava");

        }
    }
}