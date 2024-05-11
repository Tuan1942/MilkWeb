using Microsoft.Data.SqlClient;

namespace FarmMilk.Class
{
    public class Product
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int QuantityInStock { get; set; }
        public void OnGet(int iD)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from Product where ProductID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("ID", iD);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ProductID = reader.GetInt32(0);
                                ProductName = reader.GetString(1);
                                Description = reader.GetString(2);
                                Price = reader.GetDecimal(3);
                                QuantityInStock = reader.GetInt32(4);
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
        public Product(int productId, string productName, string description, decimal price, int quantityInStock)
        {
            ProductID = productId;
            ProductName = productName;
            Description = description;
            Price = price;
            QuantityInStock = quantityInStock;
        }
        public Product()
        {
        }
        public override string ToString()
        {
            return $"Product ID: {ProductID}, Name: {ProductName}, Description: {Description}, Price: {Price}, Quantity in Stock: {QuantityInStock}";
        }
    }
}
