//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LekarskaOrdinacijaCodeMedic.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Korisnik
    {
        public int id_korisnika { get; set; }
        public string slika { get; set; }
        public string ime { get; set; }
        public string prezime { get; set; }
        public Nullable<int> id_vrste_korisnika { get; set; }
        public Nullable<int> id_specijalizacije { get; set; }
        public Nullable<int> jmbg { get; set; }
        public string korisnicko_ime { get; set; }
        public string email { get; set; }
        public string lozinka { get; set; }
    }
}
