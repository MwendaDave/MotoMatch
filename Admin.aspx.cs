using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace MotoMatch
{
    public partial class Admin : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["MotorMatchDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // 🔐 Session check
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                LoadVehicles();
            }
        }

        // 📊 LOAD DATA
        private void LoadVehicles()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Vehicles", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvVehicles.DataSource = dt;
                gvVehicles.DataBind();
            }
        }

        // ➕ ADD VEHICLE (SECURE)
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            // ✅ Validation
            if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtPrice.Text))
            {
                return;
            }

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"INSERT INTO Vehicles 
                                (Name, Brand, Category, Price, Year, ImageUrl) 
                                VALUES (@Name, @Brand, @Category, @Price, @Year, @Image)";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Brand", txtBrand.Text);
                cmd.Parameters.AddWithValue("@Category", ddlCategory.Text);
                cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text));
                cmd.Parameters.AddWithValue("@Year", Convert.ToInt32(txtYear.Text));
                cmd.Parameters.AddWithValue("@Image", txtImage.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            ClearForm();
            LoadVehicles();
        }

        // ✏️ EDIT
        protected void gvVehicles_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvVehicles.EditIndex = e.NewEditIndex;
            LoadVehicles();
        }

        // 💾 UPDATE (FULL FIX)
        protected void gvVehicles_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvVehicles.DataKeys[e.RowIndex].Value);

            GridViewRow row = gvVehicles.Rows[e.RowIndex];

            string name = ((TextBox)row.Cells[1].Controls[0]).Text;
            string brand = ((TextBox)row.Cells[2].Controls[0]).Text;
            string category = ((TextBox)row.Cells[3].Controls[0]).Text;
            decimal price = Convert.ToDecimal(((TextBox)row.Cells[4].Controls[0]).Text);
            int year = Convert.ToInt32(((TextBox)row.Cells[5].Controls[0]).Text);

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"UPDATE Vehicles 
                                 SET Name=@Name, Brand=@Brand, Category=@Category, Price=@Price, Year=@Year 
                                 WHERE VehicleID=@ID";

                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Brand", brand);
                cmd.Parameters.AddWithValue("@Category", category);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@Year", year);
                cmd.Parameters.AddWithValue("@ID", id);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            gvVehicles.EditIndex = -1;
            LoadVehicles();
        }

        // 🗑️ DELETE (SECURE)
        protected void gvVehicles_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvVehicles.DataKeys[e.RowIndex].Value);

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Vehicles WHERE VehicleID=@ID", conn);
                cmd.Parameters.AddWithValue("@ID", id);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            LoadVehicles();
        }

        // ❌ CANCEL EDIT
        protected void gvVehicles_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvVehicles.EditIndex = -1;
            LoadVehicles();
        }

        // 🧹 CLEAR FORM
        private void ClearForm()
        {
            txtName.Text = "";
            txtBrand.Text = "";
            txtPrice.Text = "";
            txtYear.Text = "";
            txtImage.Text = "";
        }
    }
}