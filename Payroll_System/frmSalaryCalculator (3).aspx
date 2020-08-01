<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmSalaryCalculator.aspx.cs" Inherits="frmSalaryCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%-- Annual Hours label and text box --%>
        <asp:Label ID="lbAnnualHours" runat="server" Text="Annual Hours:" Width="95px"></asp:Label>
&nbsp;<asp:TextBox ID="txtAnnualHours" runat="server"></asp:TextBox>
        <br />
        <br />
        
        <%-- Rate label and text box --%>
        <asp:Label ID="lbRate" runat="server" Text="Rate:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
        <br />
        <br />
        
        <%-- Calculate Salary button --%>
        <asp:Button ID="BTNCalculateSalary" runat="server" 
            onclick="BTNCalculateSalary_Click" Text="Calculate Salary" />
        <br />
        <br />
        <%-- Dollar sign --%>
        <asp:Label ID="lblSalary" runat="server" Text="$"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <%-- Retun Home Button --%>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Retun Home" PostBackUrl="~/frmMain.aspx" />
        </div>
    </form>
</body>
</html>