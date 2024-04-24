using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using MilkWeb.Class;
using MilkWeb.Controllers;
using System.Collections.Generic;
using System.Collections;

namespace MilkWeb.Models
{
    public class Home : PageModel
    {
        public List<Order> AllOrders = new List<Order>();
        public List<Order> ListWait = new List<Order>();
        public List<Order> ListReceived = new List<Order>();
        public List<Order> ListGoing = new List<Order>();
        public List<Order> ListCompleted = new List<Order>();
        public List<Order> ListCanceled = new List<Order>();
        public Home()
        {
            AllOrders = Order.GetOrders();
            foreach (var order in AllOrders)
            {
                if (order.Canceled == true)
                {
                    ListCanceled.Add(order);
                    continue;
                }
                if (order.Received ==  true)
                {
                    ListReceived.Add(order);
                }
                else { ListWait.Add(order); }
                if (order.Received == true && order.Staff_ID != "")
                {
                    ListGoing.Add(order);
                }
                if (order.Completed == true)
                {
                    ListCompleted.Add(order);
                }
            }
        }
    }
}
