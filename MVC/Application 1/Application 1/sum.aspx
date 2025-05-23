<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sum.aspx.cs" Inherits="Application_1.sum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Num 1 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtnum1" runat="server"></asp:TextBox>
        </div>
        <p>
            Num 2 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtnum2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </p>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Lblsum" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnadd" runat="server" OnClick="Button1_Click" Text="Add" />
        <asp:Button ID="btnsub" runat="server" OnClick="btnsub_Click" Text="Sub " />
        <asp:Button ID="btnmul" runat="server" OnClick="btnmul_Click" Text="Mul" />
        <asp:Button ID="btndiv" runat="server" OnClick="btndiv_Click" Text="Div" />
        <asp:Button ID="btnresset" runat="server" OnClick="Button4_Click" Text="Reset" />
    </form>
</body>
</html>
