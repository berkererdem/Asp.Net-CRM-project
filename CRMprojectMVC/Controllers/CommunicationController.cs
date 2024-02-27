using CRMprojectMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRMprojectMVC.Controllers
{
    public class CommunicationController : Controller
    {
        CRMprojectDBEntities entity = new CRMprojectDBEntities();
        // GET: Communication
        public ActionResult Index()
        {
            var communications = entity.CommunicationHistory.ToList();
            return View(communications);
        }

        public ActionResult Create()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Create(CommunicationHistory communication)
        {
            entity.CommunicationHistory.Add(communication);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id)
        {

            CommunicationHistory communication= (from u in entity.CommunicationHistory where u.CommID== id select u).FirstOrDefault();
            return View(communication);

        }

        [HttpPost]
        public ActionResult Delete(CommunicationHistory communication, int id)
        {
            var comm = entity.CommunicationHistory.Find(id);
            entity.CommunicationHistory.Remove(comm);
            entity.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Update(int id)
        {
            var communication = (from u in entity.CommunicationHistory where u.CommID == id select u).FirstOrDefault();
            return View(communication);

        }

        [HttpPost]

        public ActionResult Update(int id, string CommType, string CommDate, string CommSubject, string CommContent, string CommStatus)
        {
            CommunicationHistory communication = (from u in entity.CommunicationHistory where u.CommID == id select u).FirstOrDefault();
            communication.CommType = CommType;
            communication.CommDate = CommDate;
            communication.CommSubject = CommSubject;
            communication.CommContent = CommContent;
            communication.CommStatus = CommStatus;

            entity.SaveChanges();
            return RedirectToAction("Index");
        }


    }
}