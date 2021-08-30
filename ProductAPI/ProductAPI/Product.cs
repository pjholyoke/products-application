//namespace ProductAPI
//{
//    using ProductAPI.Models;
//    using System;
//    using System.Collections.Generic;
//    using System.ComponentModel.DataAnnotations;
//    using System.ComponentModel.DataAnnotations.Schema;
//    using System.Data.Entity.Spatial;

//    public partial class Product
//    {
//        public Guid ID { get; set; }

//        public Guid TypeID { get; set; }

//        [StringLength(255)]
//        public string Name { get; set; }

//        [StringLength(1000)]
//        public string Desc { get; set; }

//        public virtual ProductType ProductType { get; set; }
//    }
//}
