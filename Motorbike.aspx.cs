using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotoMatch
{
    public partial class Motorbike : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBikes();
            }
        }

        private void LoadBikes()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MotorMatchDB"]?.ConnectionString;

            if (string.IsNullOrEmpty(connStr))
            {
                throw new Exception("Connection string not found.");
            }

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM MotorBikes";

                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                rptBikes.DataSource = reader;
                rptBikes.DataBind();
            }
        }
    }
}