//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CRMprojectMVC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Products()
        {
            this.Sales = new HashSet<Sales>();
        }
    
        public int productID { get; set; }
        public string productName { get; set; }
        public string productDescription { get; set; }
        public string productCategory { get; set; }
        public string productPrice { get; set; }
        public string productStockQuantity { get; set; }
        public Nullable<System.DateTime> productCreationDate { get; set; }
        public Nullable<System.DateTime> productUpdateDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sales> Sales { get; set; }
    }
}