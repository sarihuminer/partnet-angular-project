﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Web_Api
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class partner_angular_sari_HuminerEntities2 : DbContext
    {
        public partner_angular_sari_HuminerEntities2()
            : base("name=partner_angular_sari_HuminerEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Customer_tbl> Customer_tbl { get; set; }
        public virtual DbSet<Package_tbl> Package_tbl { get; set; }
        public virtual DbSet<PackagesToSubcRibtion_tbl> PackagesToSubcRibtion_tbl { get; set; }
        public virtual DbSet<Subcribtions> Subcribtions { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
