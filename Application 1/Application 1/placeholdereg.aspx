<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placeholdereg.aspx.cs" Inherits="Application_1.placeholdereg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />
            <br />
            <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Add control" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn2" runat="server" Text="Remove control" />
        </div>
    </form>
</body>
</html>
