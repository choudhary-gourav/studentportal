<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Webgorav.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="dashboard.css" rel="stylesheet" type="text/css" />
</head>
<body>
      <form id="form1" runat="server">
         <div class="container">
            <div class="menu" style="height:75%">
                <h3>Menu</h3>
                <a href="attendence.aspx">Personal Info</a>
                <a href="#">My Request</a>
                <a href="#">Rate & Review Application</a>
                <a href="#">Leave A Feedback </a>
                <a href="#">Reset Password</a>
                <a href="#">Share App</a>
                <a href="#">Logout</a>
               
            </div>
                <div class="content">
                <a href="attendence.aspx" class="box">Attendance</a>
                <a href="#" class="box">Assignment</a>
                <a href="#" class="box">My Course</a>
                <a href="#" class="box">Fees</a>
                <a href="#" class="box">Exam Result</a>
                <a href="#" class="box">Event</a>
                <a href="#" class="box">Timetable</a>
                <a href="#" class="box">Services</a>
                <a href="#" class="box">Groups</a>
            </div>
        </div>

         
    </form>
</body>
</html>
