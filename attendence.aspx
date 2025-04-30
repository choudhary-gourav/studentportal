<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendence.aspx.cs" Inherits="Webgorav.attendence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="attendence.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Calendar ID="attcalan" runat="server" OnDayRender="attcalan_DayRender" BackColor="#f0f4f8" BorderColor="#f0f4f8" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="300px" NextPrevFormat="FullMonth" Width="600px">

            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <div>
            <div>
                <label>Present</label>
                <label>Absent</label>
               <label>Leave</label>
            </div>
            <h3>overall</h3>
            <h5></h5>
        </div>
    </form>
</body>
</html>
