//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Bottom
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Bottom()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int BottomID { get; set; }
        [Display(Name = "Bottom Name")]
        public string BottomName { get; set; }
        public string BottomPic { get; set; }
        [Display(Name = "Bottom Color")]
        public string BottomColor { get; set; }
        public int SeasID { get; set; }
        public int OccID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
        public virtual Occasion Occasion { get; set; }
        public virtual Season Season { get; set; }
    }
}
