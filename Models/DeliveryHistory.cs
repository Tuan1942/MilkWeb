using MilkWeb.Class;

namespace MilkWeb.Models
{
    public class DeliveryHistory
    {
        public List<Order> OrderHistory { get; set; }
        public List<Order> ListWait = new List<Order>();
        public List<Order> ListReceived = new List<Order>();
        public List<Order> ListGoing = new List<Order>();
        public List<Order> ListCompleted = new List<Order>();
        public List<Order> ListCanceled = new List<Order>();
        public DeliveryHistory(string Staff_ID)
        {
            OrderHistory = Order.GetByStaffID(Staff_ID);
            foreach (var order in OrderHistory)
            {
                if (order.Canceled == true)
                {
                    ListCanceled.Add(order);
                    continue;
                }
                if (order.Received == true)
                {
                    ListReceived.Add(order);
                }
                else { ListWait.Add(order); }
                if (order.Received == true && order.Staff_ID != "" && order.Canceled == false && order.Completed == false)
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
