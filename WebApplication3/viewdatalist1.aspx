<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdatalist1.aspx.cs" Inherits="WebApplication3.viewdatalist1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderTemplate>
                <table style="width=610">
                    <tr>
                        <td style="width:110px">ID</td>
                        <td style="width:110px">Name</td>
                        <td style="width:110px">Class</td>
                        <td style="width:110px">AGE</td>
                        <td style="width:110px">Mark</td>



                    </tr>
                </table>
            </HeaderTemplate>

                <ItemTemplate>
                    <table style="width:610px">
                        <tr>
                            <td style="width:300px">
                                <asp:Label ID="lblid" runat="server" Text='<%#Eval("Id")%>'></asp:Label>
                            </td>
                              <td style="width:300px">
                              <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                          </td>
                               <td style="width:300px">
                              <asp:Label ID="Label2" runat="server" Text='<%#Eval("Class")%>'></asp:Label>
                          </td>
                               <td style="width:300px">
                              <asp:Label ID="Label3" runat="server" Text='<%#Eval("Age")%>'></asp:Label>
                          </td>
                               <td style="width:300px">
                              <asp:Label ID="Label4" runat="server" Text='<%#Eval("Marks")%>'></asp:Label>
                          </td>
                            <td>
                                <a href="update.aspx?id=<%#DataBinder.Eval(Container.DataItem,"Id") %>">Update</a>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Remove" CommandName="Remove" CommandArgument='<%#Eval("Id") %>' OnCommand="Button1_Command"/>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
