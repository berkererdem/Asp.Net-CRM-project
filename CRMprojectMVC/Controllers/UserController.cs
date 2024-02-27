using CRMprojectMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRMprojectMVC.Controllers
{
    public class UserController : Controller
    {
        CRMprojectDBEntities entity=new CRMprojectDBEntities();

        // GET: User
        public ActionResult Index()
        {

            return View();
        }

        public ActionResult Users() 
        {
            var users = entity.Users.ToList();
            return View(users);
        
        }

        public ActionResult Create()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Create(Users user)
        {
            entity.Users.Add(user);
            entity.SaveChanges();
            return RedirectToAction("Users");
        }


        public ActionResult Update(int id) 
        {
            var user = (from u in entity.Users where u.userID == id select u).FirstOrDefault();
            return View(user);

        }
        [HttpPost]
        
        public ActionResult Update(int id, string userUsername, string userName, string userSurname, string userMail, string userPassword, string userRole)
        {
            Users user= (from u in entity.Users where u.userID==id select u).FirstOrDefault();
            user.userName = userName;
            user.userUsername = userUsername;
            user.userMail = userMail;
            user.userRole = userRole;
            user.userSurname= userSurname;
            user.userPassword = userPassword;
           
          
            entity.SaveChanges();
            return RedirectToAction("Users");
        }

        public ActionResult Delete(int id) 
        {

        Users user=(from u in entity.Users where u.userID== id select u).FirstOrDefault();
            return View(user);

        }

        [HttpPost]
        public ActionResult Delete(Users users, int id)
        {
            var user = entity.Users.Find(id);
            entity.Users.Remove(user);
            entity.SaveChanges();
            return RedirectToAction("Users");
        }



    }

   
}