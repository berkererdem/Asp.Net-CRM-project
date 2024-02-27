using CRMprojectMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRMprojectMVC.Controllers
{
    public class SaleController : Controller
    {
        CRMprojectDBEntities entity = new CRMprojectDBEntities();
        // GET: Sale
        public ActionResult Index()
        {
            var sales = entity.Sales.ToList();
            return View(sales);
        }

        public ActionResult Create()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Create(Sales sale)
        {
            entity.Sales.Add(sale);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id)
        {

            Sales sale = (from u in entity.Sales where u.saleID == id select u).FirstOrDefault();
            return View(sale);

        }

        [HttpPost]
        public ActionResult Delete(Sales sales, int id)
        {
            var sale = entity.Sales.Find(id);
            entity.Sales.Remove(sale);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }



        public ActionResult Update(int id)
        {
            var sale = (from u in entity.Sales where u.saleID == id select u).FirstOrDefault();
            return View(sale);

        }

        [HttpPost]

        public ActionResult Update(int id, DateTime saleDate, string saleQuantity, string saleUnitPrice, string saleDiscountRate)
        {
            Sales sale= (from u in entity.Sales where u.saleID== id select u).FirstOrDefault();
            sale.saleDate = saleDate;
            sale.saleQuantity = saleQuantity;
            sale.saleUnitPrice = saleUnitPrice;
            sale.saleDiscountRate = saleDiscountRate;
            


            entity.SaveChanges();
            return RedirectToAction("Index");
        }










    }
}