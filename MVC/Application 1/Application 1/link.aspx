<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="link.aspx.cs" Inherits="Application_1.link" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.com/search?client=firefox-b-e&amp;sca_esv=03993e2f963b89a7&amp;q=cristiano&amp;udm=2&amp;fbs=ABzOT_CWdhQLP1FcmU5B0fn3xuWpA-dk4wpBWOGsoR7DG5zJBnsX62dbVmWR6QCQ5QEtPRrN1KFHti9EP_dqC742rxzHnsl3x2tSgTuQ1Q9QtT-HY3r-6k3UFpOnEnIT3rSAYp9zOKSNVFwwDxImxXnlZjJWVryHpBtrnlhclUAmXa0pyLf7aYVd3RCP-bjiiQZIW3o7d3eJ6Zrfl8LEyg4l3LTQMkpyMg&amp;sa=X&amp;ved=2ahUKEwj-l6nr6v6MAxU4R2wGHaA2NbQQtKgLegQIFRAB&amp;biw=1280&amp;bih=595&amp;dpr=1.5">HyperLink</asp:HyperLink>
        </div>
    </form>
</body>
</html>
