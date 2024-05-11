using FarmMilk.Class;

namespace FarmMilk.Models
{
    public class ReceiveOrder
    {
        public List<Staff> Staffs;
        public Customer customer = new Customer();
        public Order order;
        public Product product = new Product();
        public ReceiveOrder(int OrderID) 
        {
            order = new Order(OrderID);
            Staffs = Staff.GetStaffs();
            customer.OnGet(order.Customer_ID);
            product.OnGet(order.Product_ID);
        }
    }
}
