<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eglist.aspx.cs" Inherits="Application_1.eglist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem Value="1">Item1</asp:ListItem>
                <asp:ListItem Value="2">Item2</asp:ListItem>
                <asp:ListItem Value="3">Item3</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <br />
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem Value="1">Item 1</asp:ListItem>
            </asp:BulletedList>
            <asp:BulletedList ID="BulletedList2" runat="server">
                <asp:ListItem Value="2">Item 2</asp:ListItem>
            </asp:BulletedList>
            <asp:BulletedList ID="BulletedList3" runat="server">
                <asp:ListItem Value="3">Item 3</asp:ListItem>
            </asp:BulletedList>
            <br />
        </div>
    </form>
</body>
</html>
