using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Racun_kec_test.BazaPovezivanje;
using Racun_kec_test.Models;


namespace Racun_kec_test.Controllers
{
    
    public class Stavke_racunaController : Controller
    {
        private BazaDbContext db = new BazaDbContext();

        /*CUSTOM*/
        public PartialViewResult IndexByInvoice(int id)
        {
            ViewBag.InvoiceID = id;
            var invoice = db.Racuni.Where(i => i.id_racun == id).FirstOrDefault();
            ViewBag.Invoice = invoice;
            var invoicedetails = db.Stavke_racuna.Include(i => i.Racun).Where(i => i.id_racun == id);
            return PartialView("Index", invoicedetails.ToList());
        }


        /*END CUSTOM*/

        //
        // GET: /InvoiceDetails/

        public ViewResult Index()
        {
            var invoicedetails = db.Stavke_racuna.Include(i => i.Racun);
            return View(invoicedetails.ToList());
        }

        //
        // GET: /InvoiceDetails/Details/5

        public ViewResult Details(int id)
        {
            Stavke_racuna invoicedetails = db.Stavke_racuna.Find(id);
            return View(invoicedetails);
        }

        //
        // GET: /InvoiceDetails/Create
        //Optional: Invoice ID
        public ActionResult Create(int? id)
        {
            ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov");
            Racun invoice = null;
            Stavke_racuna i = null;

            if (id.HasValue)
            {
                invoice = (from ii in db.Racuni
                           where ii.id_racun == id
                           select ii).FirstOrDefault();

                if (invoice != null)
                {
                    i = new Stavke_racuna();
                    i.id_racun = id.Value;
                    i.Racun = invoice;
                    i.kolicina = 1;
                    i.cijena = 1;
                    i.pdv = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["DefaultVAT"]); 
                    i.Vrijeme = DateTime.Now;

                    if (invoice.Stavke_Racuna.Count == 0)
                    { //if this is the first line, we may want to name it as the invoice.
                        i.Artikl = invoice.oznaka;
                    }
                    ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov", id.Value);
                }
            }

            if (Request.IsAjaxRequest())
            {
                return PartialView("Create", i);
            }
            else
            {
                return View("Create", i);
            }
        }

        //
        // POST: /InvoiceDetails/Create

        [HttpPost]
        public ActionResult Create(Stavke_racuna invoicedetails)
        {
            if (ModelState.IsValid)
            {
                db.Stavke_racuna.Add(invoicedetails);
                db.SaveChanges();

                var invoice = (from i in db.Racuni where i.id_racun == invoicedetails.id_racun select i).FirstOrDefault();
                ViewBag.Invoice = invoice;

                return PartialView("Index", db.Stavke_racuna.Where(i => i.id_racun == invoicedetails.id_racun));
            }

            ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov", invoicedetails.id_racun);
            this.Response.StatusCode = 400;
            return PartialView("Create", invoicedetails);
        }

        //
        // GET: /InvoiceDetails/Edit/5

        public ActionResult Edit(int id)
        {
            Stavke_racuna invoicedetails = db.Stavke_racuna.Find(id);
            ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov", invoicedetails.id_racun);
            return PartialView(invoicedetails);
        }

        //
        // POST: /InvoiceDetails/Edit/5

        [HttpPost]
        public ActionResult Edit(Stavke_racuna invoicedetails)
        {
            if (ModelState.IsValid)
            {
                db.Entry(invoicedetails).State = EntityState.Modified;
                db.SaveChanges();

                var invoice = (from i in db.Racuni where i.id_racun == invoicedetails.id_racun select i).FirstOrDefault();
                ViewBag.Invoice = invoice;
                return PartialView("Index", db.Stavke_racuna.Where(i => i.id_racun == invoicedetails.id_racun));
            }
            ViewBag.InvoiceID = new SelectList(db.Racuni, "id_racun", "naslov", invoicedetails.id_racun);
            this.Response.StatusCode = 400;
            return PartialView("Edit", invoicedetails);
        }

        //
        // GET: /InvoiceDetails/Delete/5

        public ActionResult Delete(int id)
        {
            Stavke_racuna invoicedetails = db.Stavke_racuna.Find(id);
            return PartialView(invoicedetails);
        }

        //
        // POST: /InvoiceDetails/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Stavke_racuna invoicedetails = db.Stavke_racuna.Find(id);
            if (invoicedetails != null)
            {
                db.Stavke_racuna.Remove(invoicedetails);
                db.SaveChanges();
                return RedirectToAction("IndexByInvoice", "Stavke_racuna", new { id = invoicedetails.id_racun });
            }
            else
            {
                this.Response.StatusCode = 400;
                return Content("Record not found");
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}