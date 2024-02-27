using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CRMprojectMVC.Models; //

namespace CRMprojectMVC.Controllers
{
    public class LoginController : Controller
    {
        CRMprojectDBEntities entity= new CRMprojectDBEntities();

        // GET: Login
        public ActionResult Index()
        {
            ViewBag.message = null;
            return View();
        }

        [HttpPost]
        public ActionResult Index(string userUsername, string userPassword)
        {
            var user=(from u in entity.Users where u.userUsername==userUsername && u.userPassword==userPassword select u).FirstOrDefault();

            if (user!=null) 
            {
             
                Session["userID"] = user.userID;
                Session["userName"] =user.userName;
                Session["userSurname"] = user.userSurname;
                Session["userMail"] = user.userMail;
                Session["userRole"] = user.userRole;

                return RedirectToAction("Index", "User");

            }

            else {
                ViewBag.message = "Incorrect username or password. Please try again.";
                return View();
            }

            
        }
    }
}