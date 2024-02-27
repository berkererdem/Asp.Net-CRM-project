using CRMprojectMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRMprojectMVC.Controllers
{
    public class CustomerController : Controller
    {
        CRMprojectDBEntities entity = new CRMprojectDBEntities();

        public ActionResult Index()
        {

            return View();
        }

        public ActionResult Customers()
        {
            var Customers = entity.Customers.ToList();
            return View(Customers);

        }

        public ActionResult Create()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Create(Customers user)
        {
            entity.Customers.Add(user);
            entity.SaveChanges();
            return RedirectToAction("Customers");
        }


        public ActionResult Update(int id)
        {
            var user = (from u in entity.Customers where u.customerID == id select u).FirstOrDefault();
            return View(user);

        }
        [HttpPost]

        public ActionResult Update(int id, string customerName, string customerSurname, string customerMail, string customerPhone, string customerAddress, string customerCity, string customerCountry, string customerPostalCode, DateTime customerCreationDate, DateTime customerUpdateDate)
        {
            Customers user = (from u in entity.Customers where u.customerID == id select u).FirstOrDefault();
            user.customerName = customerName;
            user.customerSurname = customerSurname;
            user.customerMail = customerMail;
            user.customerPhone = customerPhone;
            user.customerAddress = customerAddress;
            user.customerCity = customerCity;
            user.customerCountry = customerCountry;
            user.customerPostalCode = customerPostalCode;
            user.customerCreationDate = customerCreationDate;
            user.customerUpdateDate = customerUpdateDate;


            entity.SaveChanges();
            return RedirectToAction("Customers");
        }

        public ActionResult Delete(int id)
        {

            Customers user = (from u in entity.Customers where u.customerID == id select u).FirstOrDefault();
            return View(user);

        }

        [HttpPost]
        public ActionResult Delete(Customers Customers, int id)
        {
            var user = entity.Customers.Find(id);
            entity.Customers.Remove(user);
            entity.SaveChanges();
            return RedirectToAction("Customers");
        }

    }
}