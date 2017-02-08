<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Sistema de Post</h2>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cadastrar.aspx">Cadastrar novo post</asp:HyperLink>
        <br />
        <br />
        <br />
        <strong>Listagem de posts<br />
        </strong>
        <br />
        <asp:DataList ID="dtlPosts" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("titulo") %>'></asp:Label>
                &nbsp;-
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("autor") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        <br />
    </div>
    </form>
</body>
</html>
