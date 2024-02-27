using CRMprojectMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRMprojectMVC.Controllers
{
    public class ProductController : Controller
    {
        CRMprojectDBEntities entity = new CRMprojectDBEntities();
        
        public ActionResult Index()
        {
            var products = entity.Products.ToList();
            return View(products);
        }

        public ActionResult Create()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Create(Products product)
        {
            entity.Products.Add(product);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id)
        {

            Products product = (from u in entity.Products where u.productID== id select u).FirstOrDefault();
            return View(product);

        }

        [HttpPost]
        public ActionResult Delete(Products products, int id)
        {
            var product = entity.Products.Find(id);
            entity.Products.Remove(product);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Update(int id)
        {
            var product = (from u in entity.Products where u.productID == id select u).FirstOrDefault();
            return View(product);

        }

        [HttpPost]

        public ActionResult Update(int id, string productName, string productDescription, string productCategory, string productPrice, string productStockQuantity, DateTime productCreationDate, DateTime productUpdateDate)
        {
            Products product= (from u in entity.Products where u.productID == id select u).FirstOrDefault();
            product.productName = productName;
            product.productDescription = productDescription;
            product.productCategory = productCategory;
            product.productPrice = productPrice;
            product.productStockQuantity = productStockQuantity;
            product.productCreationDate = productCreationDate;
            product.productUpdateDate = productUpdateDate;


            entity.SaveChanges();
            return RedirectToAction("Index");
        }





    }
}