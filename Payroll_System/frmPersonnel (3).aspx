<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPersonnel.aspx.cs" Inherits="frmPersonnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <%-- Logo image --%>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/CIS407A_iLab_ACITLogo.jpg" />
          <%-- Main Panel --%>
        <asp:Panel ID="Panel1" runat="server" Height="250px" HorizontalAlign="Left" Width="550px">
            <%-- First Name label and text box --%>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name: " Width="85px"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <asp:Label ID="lblLastName" runat="server" Text="Last Name: " Width="85px"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <asp:Label ID="lblPayRate" runat="server" Text="Pay Rate: " Width="85px"></asp:Label>
            <asp:TextBox ID="txtPayRate" runat="server" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <%-- Start Date label and text box --%>
            <asp:Label ID="lblStartDate" runat="server" Text="Start Date: " Width="85px"></asp:Label>
            <asp:TextBox ID="txtStartDate" runat="server" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError4" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <%-- End Date label and text box --%>
            <asp:Label ID="lblEndDate" runat="server" Text="End Date: " Width="85px"></asp:Label>
            <asp:TextBox ID="txtEndDate" runat="server" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError5" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError6" runat="server" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <%-- Submit Button --%>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            &nbsp;
            <%-- Cancel Button --%>
            <asp:Button ID="btnCancel" runat="server" PostBackUrl="~/frmMain.aspx" Text="Cancel" />
            &nbsp;
            <asp:Button ID="btnViewPersonnel" runat="server" PostBackUrl="~/frmViewPersonnel.aspx" Text="View Personnel" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;
        </asp:Panel>
    </form>
</body>
</html>
