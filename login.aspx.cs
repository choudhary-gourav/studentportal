using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Webgorav
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string query = "SELECT COUNT(*) FROM signup WHERE Name=@username AND password=@password";

            try
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);
                    int count = (int)cmd.ExecuteScalar();
                    if (count == 1)
                    {
                        Response.Redirect("dashboard.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Invalid mobile number or password.";
                    }

                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    
            protected void Signup(object sender, EventArgs e)
        {
            Response.Redirect("signup");

        }

    }
}