using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using Racun_kec_test.BazaPovezivanje;
using Racun_kec_test.Models;
using System.Globalization;
using Racun_kec_test.Models.MvcPaging;
using Rotativa;


namespace Racun_kec_test.Controllers
{
    
    public class RacunController : Controller
    {
        private BazaDbContext db = new BazaDbContext();
        private int defaultPageSize = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["DefaultPaginationSize"]);


        public ActionResult Odjava()
        {
            Session["UserID"] = null;
            Session["Username"] = null;
            return RedirectToAction("Prijava", "Prijava");
        }

        private void FillIndexViewBags(IPagedList<Racun> invoices)
        {
            ViewBag.NetTotal = invoices.Sum(i => i.NetoUkupno);
            ViewBag.TotalWithVAT = invoices.Sum(i => i.UkupnoplusPDV);
        }

        public ViewResultBase Search(string text,  int? page, int? pagesize)
        {
            Session["invoiceText"] = text;


            var invoices = db.Racuni.Include(i => i.Stavke_Racuna).Include(i => i.Kupac);

           

            if (!string.IsNullOrWhiteSpace(text))
            {
                invoices = invoices.Where(t => (t.oznaka.ToLower().IndexOf(text.ToLower()) > -1)
                    || (t.naslov.ToLower().IndexOf(text.ToLower()) > -1)
                    || (t.Kupac.ime_prezime.ToLower().IndexOf(text.ToLower()) > -1)
                );
            }


            int currentPageIndex = page.HasValue ? page.Value - 1 : 0;

            IPagedList<Racun> invoices_paged = null;

             
                invoices = invoices.Where(i => i.broj_racuna > 0); //we can not use  Where(i => i.IsProposal) from within the LINQ db context                     

            invoices_paged = invoices.OrderByDescending(i => i.datum_izdavanja).ToPagedList(currentPageIndex, pagesize ?? defaultPageSize);

            FillIndexViewBags(invoices_paged);

            if (Request.IsAjaxRequest())
                return PartialView("Index", invoices_paged);
            else
                return View("Index", invoices_paged);
        }


        public PartialViewResult LastInvoicesByCustomer(int id)
        {
            var invoices = db.Racuni.Include(i => i.Kupac).Where(i => i.id_kupac == id && i.broj_racuna > 0).OrderByDescending(i => i.datum_izdavanja);
            return PartialView("InvoicesListPartial", invoices.ToList());
        }

       

        // GET: Racun
        public ActionResult Index(string filter, int? page, int? pagesize)
        {
            
            #region remember filter stuff
            if (filter == "clear")
            {
                Session["invoiceText"] = null;
                
            }
            else
            {
                if ((Session["invoiceText"] != null) || (Session["invoiceFrom"] != null) || (Session["invoiceTo"] != null))
                {
                    return RedirectToAction("Search", new { text = Session["invoiceText"] });
                }
            }
            #endregion

            int currentPageIndex = page.HasValue ? page.Value - 1 : 0;
            var racuni = db.Racuni.Include(i => i.Stavke_Racuna).Include(i => i.Kupac);

            

            IPagedList<Racun> invoices_paged = null;
            
            
                racuni = racuni.Where(i => i.broj_racuna > 0);              
            

            invoices_paged = racuni.OrderByDescending(i => i.datum_izdavanja).ToPagedList(currentPageIndex, pagesize ?? defaultPageSize);

            FillIndexViewBags(invoices_paged);

            return View(invoices_paged);
        }

        // GET: Racun/Print/5
        public ActionResult Print(int? id)
        {

            if (Request["lan"] != null)
            {
                //valid culture name?
                CultureInfo[] cultures = System.Globalization.CultureInfo.GetCultures
                         (CultureTypes.SpecificCultures);

                var selectCulture = from p in cultures
                                    where p.Name == Request["lan"]
                                    select p;

                if (selectCulture.Count() == 1)
                    System.Threading.Thread.CurrentThread.CurrentUICulture = new CultureInfo(Request["lan"]);
            }


            ViewBag.Print = true;
            ViewBag.MyCompany = System.Configuration.ConfigurationManager.AppSettings["MyCompanyName"];
            ViewBag.MyCompanyID = System.Configuration.ConfigurationManager.AppSettings["MyCompanyID"];
            ViewBag.MyCompanyAddress = System.Configuration.ConfigurationManager.AppSettings["MyCompanyAddress"];
            ViewBag.MyCompanyPhone = System.Configuration.ConfigurationManager.AppSettings["MyCompanyPhone"];
            ViewBag.MyEmail = System.Configuration.ConfigurationManager.AppSettings["MyEmail"];
            ViewBag.MyBankAccount = System.Configuration.ConfigurationManager.AppSettings["MyBankAccount"];


            //Racun racun = db.Racuni.Find(id);
            //    return View(racun);
            var racun = db.Racuni.Where(a => a.id_racun == id).FirstOrDefault();
            return View(racun);

        }

        public ActionResult PrintViewToPdf(int id)
        {
            var report = new ActionAsPdf("Print", new { id });
            return report;
        }


        // GET: Racun/Create
        public ActionResult Create()
        {

            Racun racun = new Racun();
            racun.datum_izdavanja = DateTime.Now;
            
                //generate next invoice number
                var sljedeci_racun = (from inv in db.Racuni
                                      orderby inv.broj_racuna descending
                                      select inv).FirstOrDefault();
                if (sljedeci_racun != null)
                    racun.broj_racuna = sljedeci_racun.broj_racuna + 1;
            

            ViewData["Kupac"] = new SelectList(db.Kupci, "id_kupac", "ime_prezime", racun.id_kupac);


            return View(racun);
        }

        // POST: Racun/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Racun racun)
        {

            ViewData["Kupac"] = new SelectList(db.Kupci, "id_kupac", "ime_prezime", racun.id_kupac);

            if (ModelState.IsValid)
            {
                //make sure invoice number doesn't exist
                
                
                    var invoice_exists = (from inv in db.Racuni where inv.broj_racuna == racun.broj_racuna select inv).FirstOrDefault();
                    if (invoice_exists != null)
                { 
                    ModelState.AddModelError("broj_racuna", "Račun s tim brojem već postoji");
                        return View(racun);
                    
                }

                db.Racuni.Add(racun);
                db.SaveChanges();
                return RedirectToAction("Edit", "Racun", new { id = racun.id_racun });
            }



            return View(racun);
        }

        // GET: Racun/Edit/5
        public ActionResult Edit(int? id, bool? izradiracun = false)
        {
            Racun racun = db.Racuni.Find(id);
            ViewData["Kupac"] = new SelectList(db.Kupci, "id_kupac", "ime_prezime", racun.id_kupac);
           
            if (izradiracun == true)
            {
                //we want to make invoice from this proposal
                //generate next invoice number
                var sljedeci_racun = (from inv in db.Racuni
                                      orderby inv.broj_racuna descending
                                      select inv).FirstOrDefault();

                if (sljedeci_racun != null)
                    racun.broj_racuna = sljedeci_racun.broj_racuna + 1; //assign next available invoice number 
                racun.datum_izdavanja = DateTime.Now;

                ViewBag.Warning = "The current item is going to be converted on Invoice. A new InvoiceNumber has been pre-assigned.  Click on 'Save' to continue.";
                ViewBag.PokaziRacun  = false;
            }
           
            
            return View(racun);
        }

        // POST: Racun/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Racun racun)
        {
            ViewData["Kupac"] = new SelectList(db.Kupci, "id_kupac", "ime_prezime", racun.id_kupac);

            

            if (ModelState.IsValid)
            {
                
                    //make sure invoice number doesn't exist
                    var invoice_exists = (from inv in db.Racuni
                                          where inv.broj_racuna == racun.broj_racuna
                                          && inv.id_racun != racun.id_racun
                                          select inv).Count();

                    if (invoice_exists > 0)
                    {
                        ModelState.AddModelError("broj_racuna", "Račun s tim brojem već postoji");
                        return View(racun);
                    }
                db.Entry(racun).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(racun);
        }

        // GET: Racun/Delete/5
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int? id)
        {

            
            Racun racun = db.Racuni.Find(id);
            return View(racun);
        }

        // POST: Racun/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            
            Racun racun = db.Racuni.Find(id);

            db.Racuni.Remove(racun);
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
    }
}