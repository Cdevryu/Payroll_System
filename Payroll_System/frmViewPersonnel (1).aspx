<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmViewPersonnel.aspx.cs" Inherits="frmViewPersonnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 111px">
    <form id="form1" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="350px" Width="500px">
            <asp:Label ID="Label1" runat="server" Text="View Personnel" Font-Bold="True"></asp:Label>
            <br />
            <asp:GridView ID="grdViewPersonnel" runat="server">
            </asp:GridView>
        </asp:Panel>
    </form>
</body>
</html>
