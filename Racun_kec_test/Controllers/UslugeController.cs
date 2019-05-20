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
    public class UslugeController : Controller
    {
        private BazaDbContext db = new BazaDbContext();

        public ActionResult Odjava()
        {
            Session["UserID"] = null;
            Session["Username"] = null;
            return RedirectToAction("Prijava", "Prijava");
        }

        // GET: Usluge
        public ActionResult Index()
        {
            if (Session["UserID"] == null)
            {
                return RedirectToAction("Prijava", "Prijava");
            }
            var usluge = db.Usluge.Include(i => i.Racun);
            return View(usluge.ToList());
            
        }

        // GET: Usluge/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usluga u = db.Usluge.SingleOrDefault(s => s.id_usluga == id);
            List<Usluga> lista = new List<Usluga>();
            lista.Add(u);
            if (u == null)
            {
                return HttpNotFound();
            }
            return View(lista);
        }

        // GET: Usluge/Create
        public ActionResult Create(int? id)
        {
            Usluga usluga = new Usluga();

            usluga.mjerne_jedinice = usluga.DohvatiMjerneJedinice();

            ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov");
            Racun racuni= null;
            

            if (id.HasValue)
            {
                racuni = (from ii in db.Racuni
                           where ii.id_racun == id
                           select ii).FirstOrDefault();

                if (racuni != null)
                {
                    usluga = new Usluga();
                    usluga.id_racun = id.Value;
                    usluga.Racun = racuni;
                   

                    if (racuni.Usluge.Count == 0)
                    { //if this is the first line, we may want to name it as the invoice.
                        usluga.naziv = racuni.naslov;
                    }
                    ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov", id.Value);
                }
            }

                return View("Create", usluga);
            
        } 

        // POST: Usluge/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_usluga,naziv,cijena,mjerna_jedinica")] Usluga usluga)
        {
            usluga.mjerne_jedinice = usluga.DohvatiMjerneJedinice();

            if (ModelState.IsValid)
            {
                db.Usluge.Add(usluga);
                db.SaveChanges();

                var invoice = (from i in db.Usluge where i.id_racun == usluga.id_racun select i).FirstOrDefault();
                ViewBag.Invoice = invoice;

                return View("Index", db.Usluge.Where(i => i.id_racun == usluga.id_racun));
            }

            ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov", usluga.id_racun);
            this.Response.StatusCode = 400;
            return View("Create", usluga);
        }

        // GET: Usluge/Edit/5
        public ActionResult Edit(int? id)
        {

            Usluga usluga= db.Usluge.Find(id);
            usluga.mjerne_jedinice = usluga.DohvatiMjerneJedinice();
            ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov", usluga.id_racun);
            
            return View(usluga);
        }

        // POST: Usluge/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_usluga,naziv,cijena,mjerna_jedinica")] Usluga usluga)
        {
            usluga.mjerne_jedinice = usluga.DohvatiMjerneJedinice();
            if (ModelState.IsValid)
            {
                db.Entry(usluga).State = EntityState.Modified;
                db.SaveChanges();

                var invoice = (from i in db.Racuni where i.id_racun == usluga.id_racun select i).FirstOrDefault();
                ViewBag.Invoice = invoice;
                return View("Index", db.Usluge.Where(i => i.id_racun == usluga.id_racun));
            }
            ViewBag.InvoiceID = new SelectList(db.Racuni, "InvoiceID", "Notes", usluga.id_racun);
            this.Response.StatusCode = 400;
            return View("Edit", usluga);
        }

        // GET: Usluge/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usluga usluga = db.Usluge.Find(id);
            if (usluga == null)
            {
                return HttpNotFound();
            }
            return View(usluga);
        }

        // POST: Usluge/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Usluga usluge= db.Usluge.Find(id);
            if (usluge != null)
            {
                db.Usluge.Remove(usluge);
                db.SaveChanges();
                return RedirectToAction("Index", "Usluge", new { id = usluge.id_racun });
            }
            else
            {
                this.Response.StatusCode = 400;
                return Content("Record not found");
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        

        

    }
}