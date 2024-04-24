using MilkWeb.Class;

namespace MilkWeb.Models
{
    public class ReceiveOrder
    {
        public List<Staff> Staffs;
        public Customer customer = new Customer();
        public Order order;
        public ReceiveOrder(int OrderID) 
        {
            order = new Order(OrderID);
            Staffs = Staff.GetStaffs();
            customer.OnGet(order.Customer_ID);
        }
    }
}
