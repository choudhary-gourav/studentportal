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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string name = txtname.Text.Trim();
            string age = txtage.Text.Trim();
            string mobile = signmobile.Text.Trim();
            string password = signpawrd.Text;
            string confPassword = signconfpaswrd.Text;
            string gender = RadioButtonList1.SelectedValue;
            string state = DropDownList1.SelectedValue;

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(age) || string.IsNullOrEmpty(mobile)
                || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confPassword)
                || string.IsNullOrEmpty(gender) || string.IsNullOrEmpty(state))
            {
                Label3.Text = "Please fill in all fields.";
                return;
            }

            if (password != confPassword)
            {
                Label3.Text = "Password and Confirm Password do not match.";
                return;
            }

            string query = "INSERT INTO signup (Name, age, mobile, password, confpassword, gender, state) VALUES (@Name, @Age, @Mobile, @Password, @ConfPassword, @Gender, @State)";

            try
            {
                con.Open();
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Age", age);
                    command.Parameters.AddWithValue("@Mobile", mobile);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@ConfPassword", confPassword);
                    command.Parameters.AddWithValue("@Gender", gender);
                    command.Parameters.AddWithValue("@State", state);

                    int rows = command.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "popup", "showPopup('Sign up successful!');", true);
                        Label3.Text = "";
                    }
                    else
                    {
                        Label3.Text = "Sign up unsuccessful.";
                    }
                }
            }
            catch (Exception ex)
            {
                Label3.Text = "Error: " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}
