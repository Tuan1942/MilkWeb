﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using FarmMilk.Class;
using FarmMilk.Models;
using NuGet.Protocol;
using System.Diagnostics;
using System.Security.Claims;

namespace FarmMilk.Controllers
{
    public class HomeController : Controller
    {
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        private readonly ILogger<HomeController> _logger;
        public IActionResult Home()
        {
            if (GetRoleID() == "1")
            {
                return View(new Home());
            }
            else
            {
                return Redirect("~/Identity/Account/Login");
            }
        }
        public IActionResult Specify(int orderID, string staffID)
        {
            Order order = new Order(orderID);
            order.Received = true;
            order.Staff_ID = staffID;
            order.OnUpdate();
            return RedirectToAction("Home");
        }
        public IActionResult CancelOrder(int orderID)
        {
            Order order = new Order(orderID);
            order.OnUpdate("Canceled", "true");
            return Redirect("~/Home/OrderDetail?orderID=" + orderID);
        }
        public IActionResult CompleteOrder(int orderID)
        {
            Order order = new Order(orderID);
            order.OnUpdate("Completed", "true");
            return Redirect("~/Home/OrderDetail?orderID=" + orderID);
        }
        public IActionResult ReceiveOrder(int orderID)
        {
            return View(new ReceiveOrder(orderID));
        }
        public IActionResult OrderDetail(int orderID)
        {
            ViewBag.Staff_ID = GetUserID();
            ViewBag.Role = GetRoleID();
            return View(new ReceiveOrder(orderID));
        }
        public IActionResult DeliveryHistory() 
        {
            return View(new DeliveryHistory(GetUserID()));
        }
        public IActionResult OrderDelivering()
        {
            return View(new DeliveryHistory(GetUserID()));
        }
        public IActionResult Search(string value)
        {
            while (value != null)
            {
                return Redirect("~/Home/OrderDetail?orderID=" + value);
            }
            return NoContent();
        }
        [HttpGet]
        public string GetUserID() 
        {
            var claimsIdentity = (ClaimsIdentity)User.Identity;
            if (claimsIdentity.FindFirst(ClaimTypes.NameIdentifier) != null )
            {
                string ID = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier).ToString();
                string[] parts = ID.Split("nameidentifier:"); // Tách chuỗi
                string result = parts[1].Trim(); // Lấy phần tử thứ hai và xóa khoảng trắng
                return result;
            }
            else
            {
                return "";
            }
        }
        [HttpGet]
        public string GetRoleID()
        {
            string URL = ConnectionURL.User;
            SqlConnection connection = new SqlConnection(URL);
            connection.Open();
            string query = "Select RoleId from AspNetUserRoles where UserId = '" + GetUserID() + "'";
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = query;
            SqlDataReader reader = cmd.ExecuteReader();
            string result;
            if (reader.Read())
            {
                result = reader.GetString(0);
            }
            else result = "0";
            connection.Close();
            return result;
        }
        public string GetRoleName()
        {
            string URL = ConnectionURL.User;
            SqlConnection connection = new SqlConnection(URL);
            connection.Open();
            string query = "Select Name from [AspNetRoles] where Id = '" + GetRoleID() + "'";
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = query;
            SqlDataReader reader = cmd.ExecuteReader();
            string result;
            if (reader.Read())
            {
                result = reader.GetString(0);
            }
            else result = "";
            connection.Close();
            return result;
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        private bool IsMobileRequest()
        {
            var userAgent = HttpContext.Request.Headers["User-Agent"].ToString();
            return userAgent.Contains("Mobile", StringComparison.OrdinalIgnoreCase);
        }
    }
}
