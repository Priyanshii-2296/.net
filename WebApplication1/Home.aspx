<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Home - Demo Pages</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width:600px;margin:40px auto;font-family:Segoe UI, Tahoma, Arial;">
            <h1>ASP.NET Web Forms Demo</h1>
            <p>Select a demo page:</p>
            <ul style="list-style-type:none;padding-left:0;">
                <li><asp:HyperLink ID="hlAdRotator" runat="server" NavigateUrl="~/AdRotatorPage.aspx">AdRotator Demo</asp:HyperLink></li>
                <li><asp:HyperLink ID="hlGridView" runat="server" NavigateUrl="~/GridViewPage.aspx">GridView Demo</asp:HyperLink></li>
                <li><asp:HyperLink ID="hlDataList" runat="server" NavigateUrl="~/DataListPage.aspx">DataList Demo</asp:HyperLink></li>
                <li><asp:HyperLink ID="hlValidation" runat="server" NavigateUrl="~/ValidationPage.aspx">Validation Demo</asp:HyperLink></li>
            </ul>
        </div>
    </form>
</body>
</html>