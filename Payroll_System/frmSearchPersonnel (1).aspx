﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmSearchPersonnel.aspx.cs" Inherits="frmSearchPersonnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
    
        <br />
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Search for employee by last name:"></asp:Label>
        <br />
        <asp:TextBox ID="txtSearch" runat="server" Width="206px"></asp:TextBox>
        <br />
        <asp:Button ID="btnSearch" runat="server" PostBackUrl="~/frmViewPersonnel.aspx" Text="Search" Width="212px" />
    </form>
</body>
</html>
