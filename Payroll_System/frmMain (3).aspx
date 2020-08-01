<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmMain.aspx.cs" Inherits="frmMain" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // Add your comments here
        clsDataLayer.SaveUserActivity(Server.MapPath("PayrollSystem_DB.accdb"), "frmPersonnel");   
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <%-- Panel logo --%> 
       <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/CIS407A_iLab_ACITLogo.jpg" />

        <asp:Panel ID="Panel1" runat="server" Height="750px" Width="500px">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <%-- Salary Calulator image and hyperlink code --%>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="92px" ImageUrl="~/Images/Calculator.jpg" style="margin-right: 3px" Width="120px" />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmSalaryCalculator.aspx">Salary Calculator</asp:LinkButton>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;

            <%-- Add New Employee image and hyperlink code --%>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="92px" ImageUrl="~/Images/Add New Employee.jpg" Width="100px" />
            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/frmPersonnel.aspx">Add New Employee</asp:LinkButton>

            <br />
            <br />
            <br />
            &nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="118px" ImageUrl="~/Images/User Activity.jpg" />
            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/frmUserActivity.aspx">View User Activity</asp:LinkButton>

            <br />
            <br />
            <br />
            &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="100px" ImageUrl="~/Images/View Personnel.jpg" Width="114px" />
            <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/frmViewPersonnel.aspx">View Personnel</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" Height="90px" ImageUrl="~/Images/Search Personnel.jpg" Width="98px" />
            <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/frmSearchPersonnel.aspx">Search Personnel</asp:LinkButton>

        </asp:Panel>

    </div>
    </form>
</body>
</html>
