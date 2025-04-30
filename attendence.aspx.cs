using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webgorav
{
    public partial class attendence : System.Web.UI.Page
    {
        // Declare dictionary at class level
        private Dictionary<DateTime, string> attendanceData;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAttendanceData(); // Load only once
            }
            else
            {
                // Reload dictionary from ViewState after postback
                attendanceData = ViewState["AttendanceData"] as Dictionary<DateTime, string>;
            }
        }

        private void LoadAttendanceData()
        {
            attendanceData = new Dictionary<DateTime, string>();

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["project"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT AttendanceDate, Status FROM Attendance WHERE StudentId = 1"; // Filter by student

                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    DateTime date = Convert.ToDateTime(rdr["AttendanceDate"]);
                    string status = rdr["Status"].ToString().Trim(); // Trim to avoid whitespace issues
                    attendanceData[date] = status;
                    
                }
            }

            ViewState["AttendanceData"] = attendanceData;
        }

        protected void attcalan_DayRender(object sender, DayRenderEventArgs e)
        {
            if (attendanceData == null && ViewState["AttendanceData"] != null)
            {
                attendanceData = ViewState["AttendanceData"] as Dictionary<DateTime, string>;
            }

            if (attendanceData != null && attendanceData.ContainsKey(e.Day.Date))
            {
                string status = attendanceData[e.Day.Date];
                Literal dot = new Literal();

                if (status == "Present")
                {
                    dot.Text = "<div style='height:10px;width:10px;background-color:green;border-radius:50%;margin:auto;margin-top:2px;'></div>";
                }
                else if (status == "Absent")
                {
                    dot.Text = "<div style='height:10px;width:10px;background-color:red;border-radius:50%;margin:auto;margin-top:2px;'></div>";
                }

                e.Cell.Controls.AddAt(0, dot); 
            }
        }
    }
}
