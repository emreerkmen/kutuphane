//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UretimBilgiProje
{
    using System;
    using System.Collections.Generic;
    
    public partial class KITAP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KITAP()
        {
            this.VOLUME = new HashSet<VOLUME>();
        }
    
        public string KITAP_ISBN { get; set; }
        public string KITAP_Adi { get; set; }
        public int KITAP_TurID { get; set; }
        public int KITAP_YayinciID { get; set; }
        public int KITAP_Sayfa { get; set; }
        public int KITAP_DilID { get; set; }
        public int KITAP_TopSayi { get; set; }
        public int KITAP_UygunSayi { get; set; }
        public int KITAP_YazarID { get; set; }
    
        public virtual DIL DIL { get; set; }
        public virtual TUR TUR { get; set; }
        public virtual YAYINCI YAYINCI { get; set; }
        public virtual YAZAR YAZAR { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VOLUME> VOLUME { get; set; }
    }
}
