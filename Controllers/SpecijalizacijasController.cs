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
    public class SpecijalizacijasController : Controller
    {
        private LekarskaOrdinacijaEntities db = new LekarskaOrdinacijaEntities();

        // GET: Specijalizacijas
        public async Task<ActionResult> Index()
        {
            return View(await db.Specijalizacija.ToListAsync());
        }

        // GET: Specijalizacijas/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Specijalizacija specijalizacija = await db.Specijalizacija.FindAsync(id);
            if (specijalizacija == null)
            {
                return HttpNotFound();
            }
            return View(specijalizacija);
        }

        // GET: Specijalizacijas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Specijalizacijas/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "id_specijalizacije,vrsta_specijalizacije")] Specijalizacija specijalizacija)
        {
            if (ModelState.IsValid)
            {
                db.Specijalizacija.Add(specijalizacija);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(specijalizacija);
        }

        // GET: Specijalizacijas/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Specijalizacija specijalizacija = await db.Specijalizacija.FindAsync(id);
            if (specijalizacija == null)
            {
                return HttpNotFound();
            }
            return View(specijalizacija);
        }

        // POST: Specijalizacijas/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "id_specijalizacije,vrsta_specijalizacije")] Specijalizacija specijalizacija)
        {
            if (ModelState.IsValid)
            {
                db.Entry(specijalizacija).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(specijalizacija);
        }

        // GET: Specijalizacijas/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Specijalizacija specijalizacija = await db.Specijalizacija.FindAsync(id);
            if (specijalizacija == null)
            {
                return HttpNotFound();
            }
            return View(specijalizacija);
        }

        // POST: Specijalizacijas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Specijalizacija specijalizacija = await db.Specijalizacija.FindAsync(id);
            db.Specijalizacija.Remove(specijalizacija);
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
