using Microsoft.Data.SqlClient;
using System;
using System.Data.SqlTypes;

namespace FarmMilk.Class
{
    public class Order
    {
        public int ID { get; set; }
        public string? Staff_ID { get; set; }
        public int Customer_ID { get; set; }
        public DateTime Date { get; set; }
        public string Address { get; set; }
        public bool Received { get; set; }
        public bool Completed { get; set; }
        public bool Canceled { get; set; }
        public string Price { get; set; }
        public int Product_ID { get; set; }
        public int P_Num { get; set; }
        public Order() { }
        public Order(int iD)
        {
            OnGet(iD);
        }
        public void OnGet(int iD)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from Orders where ID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("ID", iD);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                ID = reader.GetInt32(0);
                                Customer_ID = reader.GetInt32(1);
                                Staff_ID = reader.IsDBNull(2) ? "" : reader.GetString(2);
                                Date = reader.GetDateTime(3);
                                Address = reader.IsDBNull(4) ? "" : reader.GetString(4);
                                Received = reader.GetBoolean(5);
                                Completed = reader.GetBoolean(6);
                                Canceled = reader.GetBoolean(7);
                                Price = (reader.GetDecimal(8)).ToString("N0");
                                Product_ID = reader.GetInt32(9);
                                P_Num = reader.GetInt32(10);
                            }
                        }
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void OnPost()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Insert into Orders values (@Customer_ID, @Staff_ID, @Date, @Address, @Received, @Completed, @Canceled, @Price);";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("Customer_ID", Customer_ID);
                        cmd.Parameters.AddWithValue("Staff_ID", Staff_ID);
                        cmd.Parameters.AddWithValue("Date", Date);
                        cmd.Parameters.AddWithValue("Address", Address);
                        cmd.Parameters.AddWithValue("Received", Received);
                        cmd.Parameters.AddWithValue("Completed", Completed);
                        cmd.Parameters.AddWithValue("Canceled", Canceled);
                        cmd.Parameters.AddWithValue("Price", Price);
                        cmd.ExecuteNonQuery();
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void OnUpdate()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Update Orders " +
                        "set Customer_ID=@Customer_ID, " +
                        "Staff_ID=@Staff_ID, " +
                        "Date=@Date, " +
                        "Address=@Address, " +
                        "Received=@Received, " +
                        "Completed=@Completed, " +
                        "Canceled=@Canceled, " +
                        "Price=@Price " +
                        "Where ID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("ID", ID);
                        cmd.Parameters.AddWithValue("Customer_ID", Customer_ID);
                        cmd.Parameters.AddWithValue("Staff_ID", Staff_ID);
                        cmd.Parameters.AddWithValue("Date", Date);
                        cmd.Parameters.AddWithValue("Address", Address);
                        cmd.Parameters.AddWithValue("Received", Received);
                        cmd.Parameters.AddWithValue("Completed", Completed);
                        cmd.Parameters.AddWithValue("Canceled", Canceled);
                        cmd.Parameters.AddWithValue("Price", Price);
                        cmd.ExecuteNonQuery();
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void OnUpdate(string Attribute, string Value)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Update Orders " +
                        "set " + Attribute + "=@Value " +
                        "Where ID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("Value", Value);
                        cmd.Parameters.AddWithValue("ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void OnDelete()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Delete from Orders where ID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("ID", ID);
                        cmd.ExecuteNonQuery();
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        public static List<Order> GetOrders()
        {
            List<Order> orders = new List<Order>();
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from Orders;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                try
                                {
                                    Order order = new Order();
                                    order.ID = reader.GetInt32(0);
                                    order.Customer_ID = reader.IsDBNull(1) ? 0 : reader.GetInt32(1);
                                    order.Staff_ID = reader.IsDBNull(2) ? "" : reader.GetString(2);
                                    order.Date = reader.GetDateTime(3);
                                    order.Address = reader.IsDBNull(4) ? "" : reader.GetString(4);
                                    order.Received = reader.GetBoolean(5);
                                    order.Completed = reader.GetBoolean(6);
                                    order.Canceled = reader.GetBoolean(7);
                                    order.Price = (reader.GetDecimal(8)).ToString("N0");
                                    orders.Add(order);
                                }
                                catch (SqlNullValueException) {
                                    throw;
                                }
                            }
                        }
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
            return orders;
        }
        public static List<Order> GetByStaffID(string Staff_ID)
        {
            List<Order> orders = new List<Order>();
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from Orders where Staff_ID=@Staff_ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("Staff_ID", Staff_ID);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                try
                                {
                                    Order order = new Order();
                                    order.ID = reader.GetInt32(0);
                                    order.Customer_ID = reader.GetInt32(1);
                                    order.Staff_ID = reader.IsDBNull(2) ? "" : reader.GetString(2);
                                    order.Date = reader.GetDateTime(3);
                                    order.Address = reader.GetString(4);
                                    order.Received = reader.GetBoolean(5);
                                    order.Completed = reader.GetBoolean(6);
                                    order.Canceled = reader.GetBoolean(7);
                                    order.Price = (reader.GetDecimal(8)).ToString("N0");
                                    orders.Add(order);
                                }
                                catch (SqlNullValueException)
                                {
                                    throw;
                                }
                            }
                        }
                    }
                    connection.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
            return orders;
        }
    }
}
