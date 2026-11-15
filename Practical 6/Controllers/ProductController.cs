using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Practical_6.Models;

namespace Practical_6.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            
            

            List<Product> products = new List<Product>()
            {
                new Product
                {
                    ProductID = 1,
                    Name = "Laptop",
                    Category = "Electronics",
                    Price = 50000,
                    Description= "A high-performance laptop for all your computing needs."
                },

                new Product
                {
                    ProductID = 2,
                    Name = "Mouse",
                    Category = "Accessories",
                    Price = 500,
                    Description= "A wireless mouse with ergonomic design for comfortable use."
                },

                new Product
                {
                    ProductID = 3,
                    Name = "Keyboard",
                    Category = "Accessories",
                    Price = 1000,
                    Description= "A mechanical keyboard with customizable RGB lighting and tactile feedback."
                },

                new Product
                {
                    ProductID = 4,
                    Name = "Mobile",
                    Category = "Electronics",
                    Price = 25000,
                    Description= "A smartphone with a high-resolution camera and long-lasting battery life."
                }
            };
            return View(products);

        }
    }
}