<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radio button.aspx.cs" Inherits="Application_1.radio_button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
        </div>
        <asp:RadioButton ID="rbtmale" runat="server" GroupName="gender" OnCheckedChanged="rbtmale_CheckedChanged" Text="Male" />
&nbsp;&nbsp;
        <asp:RadioButton ID="rbtfemale" runat="server" GroupName="gender" Text="Female" />
&nbsp;&nbsp;
        <asp:RadioButton ID="rbtothers" runat="server" GroupName="gender" Text="Others" />
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Gender" />
        <br />
        <br />
        <asp:Label ID="lbl1" runat="server"></asp:Label>
    </form>
</body>
</html>
