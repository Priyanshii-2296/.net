<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListPage.aspx.cs" Inherits="WebApplication1.DataListPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>DataList Demo</title>
    <style>
        .product { padding:8px; border:1px solid #ddd; margin:4px; text-align:center; }
        .product img { max-width:100%; height:auto; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width:900px;margin:40px auto;font-family:Segoe UI, Tahoma, Arial;">
            <h2>DataList Demo</h2>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="8">
                <ItemTemplate>
                    <div class="product">
                        <asp:Image ID="img" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Width="150px" /><br />
                        <strong><%# Eval("Title") %></strong><br />
                        <span><%# Eval("Description") %></span>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <div style="margin-top:20px;">
                <asp:HyperLink ID="hlBack3" runat="server" NavigateUrl="~/Home.aspx">&larr; Back to Home</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>