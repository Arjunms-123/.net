<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reverse.aspx.cs" Inherits="Application_1.reverse" %>

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
        <p>
            <asp:Label ID="Label1" runat="server" Text="Enter the number : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txt1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Reverse" />
        </p>
        <div>
            <br />
            <asp:Label ID="Label2" runat="server" Text="The reverse of the number is : "></asp:Label>
&nbsp;
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
