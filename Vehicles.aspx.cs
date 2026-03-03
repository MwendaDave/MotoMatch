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
    public partial class Vehicles : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["MotorMatchDB"].ConnectionString;

        string selectedCategory = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadVehicles();
            }
        }

        protected void Filter_Command(object sender, CommandEventArgs e)
        {
            selectedCategory = e.CommandArgument.ToString();
            LoadVehicles();
        }

        protected void Filter_Changed(object sender, EventArgs e)
        {
            LoadVehicles();
        }

        private void LoadVehicles()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM Vehicles WHERE 1=1";

                if (!string.IsNullOrEmpty(selectedCategory) && selectedCategory != "all")
                    query += " AND Category = @Category";

                if (!string.IsNullOrEmpty(ddlBrand.SelectedValue))
                    query += " AND Brand = @Brand";

                if (!string.IsNullOrEmpty(ddlYear.SelectedValue))
                    query += " AND Year = @Year";

                if (!string.IsNullOrEmpty(txtMinPrice.Text))
                    query += " AND Price >= @Min";

                if (!string.IsNullOrEmpty(txtMaxPrice.Text))
                    query += " AND Price <= @Max";

                SqlCommand cmd = new SqlCommand(query, conn);

                if (query.Contains("@Category"))
                    cmd.Parameters.AddWithValue("@Category", selectedCategory);

                if (query.Contains("@Brand"))
                    cmd.Parameters.AddWithValue("@Brand", ddlBrand.SelectedValue);

                if (query.Contains("@Year"))
                    cmd.Parameters.AddWithValue("@Year", ddlYear.SelectedValue);

                if (query.Contains("@Min"))
                    cmd.Parameters.AddWithValue("@Min", txtMinPrice.Text);

                if (query.Contains("@Max"))
                    cmd.Parameters.AddWithValue("@Max", txtMaxPrice.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptVehicles.DataSource = dt;
                rptVehicles.DataBind();
            }
        }
    }
}