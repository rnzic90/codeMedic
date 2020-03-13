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
    public class AspNetUsersController : Controller
    {
        private LekarskaOrdinacijaEntities db = new LekarskaOrdinacijaEntities();

        // GET: AspNetUsers
        public async Task<ActionResult> Index()
        {
            var aspNetUsers = db.AspNetUsers.Include(a => a.Specijalizacija);
            return View(await aspNetUsers.ToListAsync());
        }
        public async Task<ActionResult> Doktor()
        {
            if (User.IsInRole("Doktor"))
            {

            }
            var aspNetUsers = db.AspNetUsers.Include(a => a.Specijalizacija);
            return View(await aspNetUsers.ToListAsync());
        }

        // GET: AspNetUsers/Details/5
        public async Task<ActionResult> Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = await db.AspNetUsers.FindAsync(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // GET: AspNetUsers/Create
        public ActionResult Create()
        {
            ViewBag.id_specijalizacije = new SelectList(db.Specijalizacija, "id_specijalizacije", "vrsta_specijalizacije");
            return View();
        }

        // POST: AspNetUsers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,slika,ime,prezime,id_specijalizacije,titula_zvanje,ime_prezime,titula_zvanje_ime_prezime")] AspNetUsers aspNetUsers)
        {
            if (ModelState.IsValid)
            {
                db.AspNetUsers.Add(aspNetUsers);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.id_specijalizacije = new SelectList(db.Specijalizacija, "id_specijalizacije", "vrsta_specijalizacije", aspNetUsers.id_specijalizacije);
            return View(aspNetUsers);
        }

        // GET: AspNetUsers/Edit/5
        public async Task<ActionResult> Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = await db.AspNetUsers.FindAsync(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_specijalizacije = new SelectList(db.Specijalizacija, "id_specijalizacije", "vrsta_specijalizacije", aspNetUsers.id_specijalizacije);
            return View(aspNetUsers);
        }

        // POST: AspNetUsers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,slika,ime,prezime,id_specijalizacije,titula_zvanje,ime_prezime,titula_zvanje_ime_prezime")] AspNetUsers aspNetUsers)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aspNetUsers).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.id_specijalizacije = new SelectList(db.Specijalizacija, "id_specijalizacije", "vrsta_specijalizacije", aspNetUsers.id_specijalizacije);
            return View(aspNetUsers);
        }

        // GET: AspNetUsers/Delete/5
        public async Task<ActionResult> Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUsers aspNetUsers = await db.AspNetUsers.FindAsync(id);
            if (aspNetUsers == null)
            {
                return HttpNotFound();
            }
            return View(aspNetUsers);
        }

        // POST: AspNetUsers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(string id)
        {
            AspNetUsers aspNetUsers = await db.AspNetUsers.FindAsync(id);
            db.AspNetUsers.Remove(aspNetUsers);
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
