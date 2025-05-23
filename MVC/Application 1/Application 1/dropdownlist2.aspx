<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist2.aspx.cs" Inherits="Application_1.dropdownlist2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1373px">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="184px">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter text : "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Copy to dropdown" />
            <br />
            <br />
            <asp:DropDownList ID="ddl1" runat="server">
            </asp:DropDownList>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="191px">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Select an item : "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl2" runat="server">
                <asp:ListItem Value="1">Ronaldo</asp:ListItem>
                <asp:ListItem Value="2">Messi</asp:ListItem>
                <asp:ListItem Value="3">Neymar</asp:ListItem>
                <asp:ListItem Value="4">Zidane</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="btn2" runat="server" OnClick="btn2_Click1" Text="Button" />
            <br />
            <br />
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            <br />
        </asp:Panel>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel3" runat="server" Height="198px">
            <br />
            <asp:Label ID="Label3" runat="server" Text="Select an item : "></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="1">Ronaldo</asp:ListItem>
                <asp:ListItem Value="2">Messi</asp:ListItem>
                <asp:ListItem Value="3">Neymar</asp:ListItem>
                <asp:ListItem Value="4">Zidane</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel4" runat="server" Height="243px">
                <br />
                <asp:DropDownList ID="ddl4" runat="server">
                    <asp:ListItem Value="1">Ronado</asp:ListItem>
                    <asp:ListItem Value="2">Messi</asp:ListItem>
                    <asp:ListItem Value="3">Neymar</asp:ListItem>
                    <asp:ListItem Value="4">Zidane</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <br />
                <asp:Button ID="btn4" runat="server" OnClick="btn4_Click" Text="Button" />
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
