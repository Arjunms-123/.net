<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multiview1.aspx.cs" Inherits="Application_1.multiview1" %>

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
            <br />
            <br />
            <asp:MultiView ID="MultiView2" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:Label runat="server" Text="First" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#33CC33"></asp:Label><br /><br />
                    <asp:Label runat="server" Text="">This is the First view</asp:Label><br /><br />
                    <asp:Button runat="server" Text="Goto view2" OnClick="Unnamed2_Click" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label runat="server" Text="Second" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#3333CC"></asp:Label><br /><br />
                    <asp:Label runat="server" Text="">This is the Second view</asp:Label><br /><br />
                    <asp:Button runat="server" Text="Goto view3" OnClick="Unnamed4_Click" />
                </asp:View>

                <asp:View ID="View3" runat="server">
                    <asp:Label runat="server" Text="Third" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="Red"></asp:Label><br /><br />
                    <asp:Label runat="server" Text="">This is the Third view</asp:Label><br /><br />
                    <asp:Button runat="server" Text="Goto view1" OnClick="Unnamed6_Click" />
                </asp:View>
            </asp:MultiView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
