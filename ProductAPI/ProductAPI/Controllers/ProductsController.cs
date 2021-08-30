using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProductAPI.Models;
using System.Web.Http.Results;
using System.Net;
using Newtonsoft.Json;

namespace ProductAPI.Controllers
{
    public class ProductsController : Controller
    {
        JsonSerializer serializer = new JsonSerializer();

        [HttpGet]
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return new JsonResult();
        }

        public JsonResult GetProductTypes()
        {
            List<ProductType> productTypes = new List<ProductType>();

            using (Model db = new Model())
            {
                productTypes = db.ProductTypes.ToList<ProductType>();
            }

            return new JsonResult()
            {
                Data = productTypes,
                JsonRequestBehavior = JsonRequestBehavior.AllowGet
            };
        }
    }
}
