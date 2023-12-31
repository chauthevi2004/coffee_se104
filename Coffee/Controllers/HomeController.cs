using Coffee.Models;
using Coffee.Models.DtoEdit;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Mvc;

namespace Coffee.Controllers
{
    public class HomeController : Controller
    {
        DbContextEntity db = new DbContextEntity();
        [ChildActionOnly]
        public ActionResult NavBar()
        {
            var donhang = Session["donhang"] as DonHangsDtoEdit;
            int total = 0;
            if (donhang != null)
            {
                total = donhang.ChiTietDonHangsDtoEdit.Count;
            }
            return PartialView("_NavBar", total);
        }

        public ActionResult Index()
        {
            
            return View();
        }


        




    }
}