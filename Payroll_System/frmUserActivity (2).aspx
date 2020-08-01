<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmUserActivity.aspx.cs" Inherits="frmUserActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="122px" ImageUrl="~/Images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="350px" Width="500px">
            <asp:Label ID="Label1" runat="server" Text="User Activity" Font-Bold="True"></asp:Label>
            <br />
            <asp:GridView ID="grdUserActivity" runat="server">
            </asp:GridView>
            <br />
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
