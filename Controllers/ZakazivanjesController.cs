using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LekarskaOrdinacijaCodeMedic.Models;

namespace LekarskaOrdinacijaCodeMedic.Controllers
{
    public class ZakazivanjesController : Controller
    {
        private LekarskaOrdinacijaEntities db = new LekarskaOrdinacijaEntities();

        // GET: Zakazivanjes
        public async Task<ActionResult> Index()
        {
            var zakazivanje = db.Zakazivanje.Include(z => z.AspNetUsers).Include(z => z.AspNetUsers1).Include(z => z.Usluga);
            return View(await zakazivanje.ToListAsync());
        }

        // GET: Zakazivanjes/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zakazivanje zakazivanje = await db.Zakazivanje.FindAsync(id);
            if (zakazivanje == null)
            {
                return HttpNotFound();
            }
            return View(zakazivanje);
        }

        // GET: Zakazivanjes/Create
        public ActionResult Create()
        {
            ViewBag.id_korisnika = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.lekar_id = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.id_usluga = new SelectList(db.Usluga, "id_usluga", "vrsta_usluge");
            return View();
        }

        // POST: Zakazivanjes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id_zakazivanja,id_korisnika,id_usluga,vreme_pocetka,vreme_zavrsetka,beleska,lekar_id")] Zakazivanje zakazivanje)
        {
            if (ModelState.IsValid)
            {
                db.Zakazivanje.Add(zakazivanje);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.id_korisnika = new SelectList(db.AspNetUsers, "Id", "Email", zakazivanje.id_korisnika);
            ViewBag.lekar_id = new SelectList(db.AspNetUsers, "Id", "Email", zakazivanje.lekar_id);
            ViewBag.id_usluga = new SelectList(db.Usluga, "id_usluga", "vrsta_usluge", zakazivanje.id_usluga);
            return View(zakazivanje);
        }
       
        public ActionResult ZakazivanjeT()
        {
            LekarskaOrdinacijaEntities db = new LekarskaOrdinacijaEntities();
            

            
            

/*

            var myList = new SelectList(new List<SelectListItem>{
      from c in Specijalizacija
        join d in Usluga
        on c.id equals d.CommDeptID
        where c.CommunicationsID == id
        select new SelectListItem
        {
            Value = d.CommDeptID.ToString(),
            Text = d.DeptText,
            Selected = d.CommDeptID == c.LocationID
        }
    }.ToList()); */



            ViewBag.id_korisnika = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.id_usluga = new SelectList(db.Usluga, "id_usluga", "vrsta_usluge");
            ViewBag.ime_prezime = new SelectList(db.AspNetUsers, "ime_prezime", "ime_prezime");

            ViewBag.id_specijalizacija = new SelectList(db.Specijalizacija, "id_specijalizacije", "vrsta_specijalizacije");
            ViewBag.usluge = new SelectList(new List<AspNetUsers>(), "Id", "ime_prezime");

            
            return View();

        }
        public IList<AspNetUsers> Getusluga(int id)
        {
            return db.AspNetUsers.Where(m => m.id_specijalizacije == id).ToList();
        }
        public JsonResult GetJsonState(int id)
        {

            var uslugaListt = Getusluga(Convert.ToInt32(id));
            var uslugasList = uslugaListt.Select(m => new SelectListItem()
            {
                Text = m.ime_prezime,
                Value = m.ime_prezime.ToString()
            });

            return Json(uslugasList, JsonRequestBehavior.AllowGet);
        }

        // POST: Zakazivanjes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ZakazivanjeT([Bind(Include = "id_zakazivanja,id_korisnika,id_usluga,vreme_pocetka,vreme_zavrsetka,beleska,lekar_id,id_specializacije")] Zakazivanje zakazivanje)
        {
            if (ModelState.IsValid)
            {
                db.Zakazivanje.Add(zakazivanje);
                await db.SaveChangesAsync();
                return RedirectToAction("Index","Front");
            }

            ViewBag.id_korisnika = new SelectList(db.AspNetUsers, "Id", "Email", zakazivanje.id_korisnika);
            ViewBag.id_usluga = new SelectList(db.Usluga, "id_usluga", "vrsta_usluge", zakazivanje.id_usluga);
            
            ViewBag.ime_prezime = new SelectList(db.AspNetUsers, "ime_prezime", "ime_prezime", zakazivanje.AspNetUsers.ime_prezime);
            return View(zakazivanje);
        }
        

        // GET: Zakazivanjes/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zakazivanje zakazivanje = await db.Zakazivanje.FindAsync(id);
            if (zakazivanje == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_korisnika = new SelectList(db.AspNetUsers, "Id", "Email", zakazivanje.id_korisnika);
            ViewBag.lekar_id = new SelectList(db.AspNetUsers, "Id", "Email", zakazivanje.lekar_id);
            ViewBag.id_usluga = new SelectList(db.Usluga, "id_usluga", "vrsta_usluge", zakazivanje.id_usluga);
            return View(zakazivanje);
        }

        // POST: Zakazivanjes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id_zakazivanja,id_korisnika,id_usluga,vreme_pocetka,vreme_zavrsetka,beleska,lekar_id")] Zakazivanje zakazivanje)
        {
            if (ModelState.IsValid)
            {
                db.Entry(zakazivanje).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.id_korisnika = new SelectList(db.AspNetUsers, "Id", "Email", zakazivanje.id_korisnika);
            ViewBag.lekar_id = new SelectList(db.AspNetUsers, "Id", "Email", zakazivanje.lekar_id);
            ViewBag.id_usluga = new SelectList(db.Usluga, "id_usluga", "vrsta_usluge", zakazivanje.id_usluga);
            return View(zakazivanje);
        }

        // GET: Zakazivanjes/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zakazivanje zakazivanje = await db.Zakazivanje.FindAsync(id);
            if (zakazivanje == null)
            {
                return HttpNotFound();
            }
            return View(zakazivanje);
        }

        // POST: Zakazivanjes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Zakazivanje zakazivanje = await db.Zakazivanje.FindAsync(id);
            db.Zakazivanje.Remove(zakazivanje);
            await db.SaveChangesAsync();
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
        
        [Route("filter/{id}")]
        public JsonResult filter_dropdown(int id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            var json = db.AspNetUsers.Where(x => x.id_specijalizacije == id).ToList();
            return Json(json, JsonRequestBehavior.AllowGet);
        }

        
        [Route("filter_s/{id}")]
        public JsonResult filter_dropdown_select(int id)
        {
            //initialize model db
            //testdbEntities dc = new testdbEntities();
            //get employee details 
            List<AspNetUsers> data = db.AspNetUsers.ToList();
            //selecting the desired columns
            var data_select = data.Select(S => new {
                Id = S.Id,
                ImePrezime = S.ime_prezime,
                IdSpecijalizacije = S.id_specijalizacije
            }).Where(w => w.IdSpecijalizacije == id);
            return Json(data_select, JsonRequestBehavior.AllowGet);
        }
    }
}
