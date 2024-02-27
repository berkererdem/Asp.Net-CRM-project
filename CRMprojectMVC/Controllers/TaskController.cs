using CRMprojectMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRMprojectMVC.Controllers
{
   
    public class TaskController : Controller

    {

        CRMprojectDBEntities entity = new CRMprojectDBEntities();
        // GET: Task
        public ActionResult Index()
        {
            var tasks = entity.Tasks.ToList();
            return View(tasks);
        }

        public ActionResult Create()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Create(Tasks task)
        {
            entity.Tasks.Add(task);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id)
        {

            Tasks task = (from u in entity.Tasks where u.taskID == id select u).FirstOrDefault();
            return View(task);

        }

        [HttpPost]
        public ActionResult Delete(Tasks tasks, int id)
        {
            var task = entity.Tasks.Find(id);
            entity.Tasks.Remove(task);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }



        public ActionResult Update(int id)
        {
            var task = (from u in entity.Tasks where u.taskID== id select u).FirstOrDefault();
            return View(task);

        }

        [HttpPost]

        public ActionResult Update(int id, string taskName, string taskDescription, DateTime taskStartDate, DateTime taskEndDate, string taskStatus)
        {
            Tasks task = (from u in entity.Tasks where u.taskID == id select u).FirstOrDefault();
            task.taskName = taskName;
            task.taskDescription = taskDescription;
            task.taskStartDate = taskStartDate;
            task.taskEndDate = taskEndDate;
            task.taskStatus = taskStatus;  
            
            entity.SaveChanges();
            return RedirectToAction("Index");
        }









    }
}