<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdown1.aspx.cs" Inherits="Application_1.dropdown1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Select State : "></asp:Label>
        <asp:DropDownList ID="ddlemployee" runat="server" Height="25px" OnSelectedIndexChanged="ddlemployee_SelectedIndexChanged" style="margin-left: 60px" Width="206px" AutoPostBack="True">
            <asp:ListItem Value="-1">Select state</asp:ListItem>
            <asp:ListItem Value="01">Kerala</asp:ListItem>
            <asp:ListItem Value="02">Tamilnadu</asp:ListItem>
            <asp:ListItem Value="03">Karnataka</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
            <asp:Label ID="lbl1" runat="server"></asp:Label>
            <br />
        <asp:Panel ID="Panel1" runat="server" Height="142px" Visible="False">
            <br />
            <asp:Label ID="Label2" runat="server" Text="District : "></asp:Label>
            <asp:DropDownList ID="ddlemployee0" runat="server" Height="25px" OnSelectedIndexChanged="ddlemployee_SelectedIndexChanged" style="margin-left: 36px" Width="206px">
            </asp:DropDownList>
        </asp:Panel>
        <br />
        <br />
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
