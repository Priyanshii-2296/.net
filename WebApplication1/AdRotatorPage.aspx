<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotatorPage.aspx.cs" Inherits="WebApplication1.AdRotatorPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>AdRotator Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width:700px;margin:40px auto;font-family:Segoe UI, Tahoma, Arial;text-align:center;">
            <h2>AdRotator Demo</h2>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads.xml" Width="468px" Height="60px" Target="_blank" />
            <div style="margin-top:20px;text-align:left;">
                <asp:HyperLink ID="hlBack1" runat="server" NavigateUrl="~/Home.aspx">&larr; Back to Home</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>