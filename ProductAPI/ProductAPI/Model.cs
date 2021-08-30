namespace ProductAPI
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using ProductAPI.Models;
    using System.Data.Entity.ModelConfiguration.Conventions;

    public partial class Model : DbContext
    {
        public Model()
            : base("name=ProductModel")
        {
        }

        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductType> ProductTypes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            modelBuilder.Entity<Product>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Desc)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Desc)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>();
                //.HasMany(e => e.Products)
                //.WithRequired(e => e.ProductType)
                //.HasForeignKey(e => e.TypeID)
                //.WillCascadeOnDelete(false);
        }
    }
}
