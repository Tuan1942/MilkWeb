namespace MilkWeb.Class
{
    public class ConnectionURL
    {
        static string DataSource = "Localhost\\SQLEXPRESS";
        static string URL(string Catalog)
        {
            return "Data Source=" + DataSource + ";Initial Catalog=" + Catalog + ";Integrated Security=True;Pooling=False;TrustServerCertificate=True";
        }
        public static readonly string User = URL("MilkWebUser");
        //public static readonly string Orders = URL("DonHang");
    }
}
