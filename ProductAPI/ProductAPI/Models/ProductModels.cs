using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace ProductAPI.Models
{
    public class ProductType
    {
        public Guid ID { get; set; }

        public string Name { get; set; }

        public string Desc { get; set; }
    }

    public partial class Product
    {
        public Guid ID { get; set; }

        [JsonIgnore]
        public Guid TypeID { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(1000)]
        public string Desc { get; set; }

        [ForeignKey("TypeID")]
        public virtual ProductType ProductType { get; set; }
    }
}
