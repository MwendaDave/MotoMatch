using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MotoMatch.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MotorMatchDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM Users WHERE Email=@Email AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    // Store session
                    Session["UserID"] = dr["UserID"].ToString();
                    Session["UserName"] = dr["FullName"].ToString();
                    Session["Role"] = dr["Role"].ToString();

                    // Redirect based on role
                    if (dr["Role"].ToString() == "Admin")
                    {
                        Response.Redirect("~/Admin/AdminDashboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/Home.aspx");
                    }
                }
                else
                {
                    lblMessage.Text = "Invalid email or password!";
                }
            }
        }
    }
}