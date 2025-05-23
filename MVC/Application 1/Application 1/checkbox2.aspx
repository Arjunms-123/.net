<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox2.aspx.cs" Inherits="Application_1.checkbox2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 15px">
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="288px">
            <asp:CheckBox ID="chk1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Option 1" />
            <br />
            <br />
            <asp:CheckBox ID="chk2" runat="server" Text="Option 2" />
            <br />
            <br />
            <asp:CheckBox ID="chk3" runat="server" Text="Option 3" />
            <br />
            <br />
            <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="lbl1" runat="server"></asp:Label>
        </asp:Panel>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel2" runat="server" Height="240px">
            <br />
            <asp:CheckBoxList ID="chk4" runat="server">
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Button ID="btn2" runat="server" OnClick="btn2_Click" Text="Button" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="lbl3" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
