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
    
    public partial class GOREVLI
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GOREVLI()
        {
            this.ODUNC = new HashSet<ODUNC>();
            this.ODUNC1 = new HashSet<ODUNC>();
        }
    
        public string GOREVLI_TC { get; set; }
        public string GOREVLI_Sifre { get; set; }
        public string GOREVLI_Adi { get; set; }
        public string GOREVLI_Soyadi { get; set; }
        public int GOREVLI_KutuphaneID { get; set; }
    
        public virtual KUTUPHANE KUTUPHANE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ODUNC> ODUNC { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ODUNC> ODUNC1 { get; set; }
    }
}
