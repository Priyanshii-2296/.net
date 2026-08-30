<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewPage.aspx.cs" Inherits="WebApplication1.GridViewPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>GridView Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width:800px;margin:40px auto;font-family:Segoe UI, Tahoma, Arial;">
            <h2>GridView Demo</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="grid" GridLines="Both" BorderStyle="Solid" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C}" />
                </Columns>
            </asp:GridView>
            <div style="margin-top:20px;">
                <asp:HyperLink ID="hlBack2" runat="server" NavigateUrl="~/Home.aspx">&larr; Back to Home</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>