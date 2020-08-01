<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPersonnelVerified.aspx.cs" Inherits="frmPersonnelVerified" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 439px;
            height: 109px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
        <%-- Logo image --%>
       <img class="auto-style1" src="Images/CIS407A_iLab_ACITLogo.jpg" />
        <br />
        <%-- Panel box --%>
        <asp:Panel ID="Panel1" runat="server" Height="250px" Width="650px">
            <br />
            <br />
            <br />
            <%-- Information to Submit label and text input box --%>
            <asp:Label ID="lblInformationSubmit" runat="server" Text="Information to Submit "></asp:Label>
            <asp:TextBox ID="txtVerifiedInfo" runat="server" Height="80px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnViewPersonnel" runat="server" PostBackUrl="~/frmViewPersonnel.aspx" Text="View Personnel" />
            <br />
            &nbsp;&nbsp;&nbsp;
            <br />
            <%-- Retun Home Button --%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Retun Home" PostBackUrl="~/frmMain.aspx" />
        </asp:Panel>
        <br />
        </div>
    </form>
   </body>
</html>

