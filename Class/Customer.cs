using Microsoft.Data.SqlClient;
using System.Data.SqlTypes;

namespace FarmMilk.Class
{
    public class Customer
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public Customer() { }
        public void OnGet(int iD)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from Customer where ID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("ID", iD);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ID = reader.GetInt32(0);
                                Name = reader.GetString(1);
                                Phone = reader.GetString(2);
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
                    string sql = "Insert into Customer values (@Name);";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("Name", Name);
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
                    string sql = "Update Customer " +
                        "set Name=@Name " +
                        "Where ID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("ID", ID);
                        cmd.Parameters.AddWithValue("Name", Name);
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
                    string sql = "Delete from Customer where ID=@ID;";
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
        public static List<Customer> GetCustomers()
        {
            List<Customer> Customers = new List<Customer>();
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from Customer;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                try
                                {
                                    Customer Customer = new Customer();
                                    Customer.ID = reader.GetInt32(0);
                                    Customer.Name = reader.GetString(1);
                                    Customer.Phone = reader.GetString(2);
                                    Customers.Add(Customer);
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
            return Customers;
        }
        public List<Customer> Search(string Name)
        {
            List<Customer> Customers = new List<Customer>();
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from Customer where Name like @Name;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("Name", Name);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                try
                                {
                                    Customer Customer = new Customer();
                                    Customer.ID = reader.GetInt32(0);
                                    Customer.Name = reader.GetString(1);
                                    Customer.Phone = reader.GetString(2);
                                    Customers.Add(Customer);
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
            return Customers;
        }

    }
}
