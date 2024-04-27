using Microsoft.Data.SqlClient;
using System.Data.SqlTypes;

namespace MilkWeb.Class
{
    public class Staff
    {
        public string ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Staff() { }
        public void OnGet(string iD)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from [AspNetUsers] where ID=@ID;";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("ID", iD);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                ID = reader.GetString(0);
                                FirstName = reader.GetString(1);
                                LastName = reader.GetString(2);
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
        public static List<Staff> GetStaffs()
        {
            List<Staff> staffs = new List<Staff>();
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionURL.User))
                {
                    connection.Open();
                    string sql = "Select * from [AspNetUsers];";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                try
                                {
                                    Staff staff = new Staff();
                                    staff.ID = reader.GetString(0);
                                    staff.FirstName = reader.GetString(1);
                                    staff.LastName = reader.GetString(2);
                                    if (GetRoleID(staff.ID) == "0")
                                    staffs.Add(staff);
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
            return staffs;
        }
        public static string GetRoleID(string UserID)
        {
            string URL = ConnectionURL.User;
            SqlConnection connection = new SqlConnection(URL);
            connection.Open();
            string query = "Select RoleId from AspNetUserRoles where UserId = '" + UserID + "'";
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
    }
}
