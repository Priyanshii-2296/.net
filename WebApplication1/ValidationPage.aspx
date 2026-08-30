<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationPage.aspx.cs" Inherits="WebApplication1.ValidationPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Validation Demo</title>
    <style>
        .field { margin-bottom:12px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width:600px;margin:40px auto;font-family:Segoe UI, Tahoma, Arial;">
            <h2>Validation Demo</h2>

            <div class="field">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label><br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="field">
                <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password:" AssociatedControlID="txtConfirm"></asp:Label><br />
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvPasswords" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
            </div>

            <div class="field">
                <asp:Label ID="lblAge" runat="server" Text="Age:" AssociatedControlID="txtAge"></asp:Label><br />
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" Type="Integer" MinimumValue="18" MaximumValue="60" ErrorMessage="Age must be between 18 and 60." ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
            </div>

            <div class="field">
                <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label><br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address." ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblResult" runat="server" Text="" />

n            <div style="margin-top:20px;">
                <asp:HyperLink ID="hlBack4" runat="server" NavigateUrl="~/Home.aspx">&larr; Back to Home</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>