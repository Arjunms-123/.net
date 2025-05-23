<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobutonlist.aspx.cs" Inherits="Application_1.radiobutonlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 906px;
        }
    </style>
</head>
<body style="height: 13px">
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="269px">
            <br />
            <asp:RadioButtonList ID="rbtnl1" runat="server" AutoPostBack="True" Height="137px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="157px">
                <asp:ListItem Value="1">Male</asp:ListItem>
                <asp:ListItem Value="2">Female</asp:ListItem>
                <asp:ListItem Value="3">Other</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="lbl1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="157px">
                <asp:RadioButtonList ID="btnl2" runat="server">
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="select" />
                <br />
                <br />
                <asp:Label ID="lbl2" runat="server"></asp:Label>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
