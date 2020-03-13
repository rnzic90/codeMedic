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
    public class UslugasController : Controller
    {
        private LekarskaOrdinacijaEntities db = new LekarskaOrdinacijaEntities();

        // GET: Uslugas
        public async Task<ActionResult> Index()
        {
            return View(await db.Usluga.ToListAsync());
        }

        // GET: Uslugas/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usluga usluga = await db.Usluga.FindAsync(id);
            if (usluga == null)
            {
                return HttpNotFound();
            }
            return View(usluga);
        }

        // GET: Uslugas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Uslugas/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id_usluga,vrsta_usluge,cena")] Usluga usluga)
        {
            if (ModelState.IsValid)
            {
                db.Usluga.Add(usluga);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(usluga);
        }

        // GET: Uslugas/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usluga usluga = await db.Usluga.FindAsync(id);
            if (usluga == null)
            {
                return HttpNotFound();
            }
            return View(usluga);
        }

        // POST: Uslugas/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id_usluga,vrsta_usluge,cena")] Usluga usluga)
        {
            if (ModelState.IsValid)
            {
                db.Entry(usluga).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(usluga);
        }

        // GET: Uslugas/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Usluga usluga = await db.Usluga.FindAsync(id);
            if (usluga == null)
            {
                return HttpNotFound();
            }
            return View(usluga);
        }

        // POST: Uslugas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Usluga usluga = await db.Usluga.FindAsync(id);
            db.Usluga.Remove(usluga);
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
    }
}
