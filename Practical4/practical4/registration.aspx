<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="practical4.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Registration Form</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>Registration Form</h2>

            <table>

                <tr>
                    <td>Mobile</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator
                            ID="rfvMobile"
                            runat="server"
                            ControlToValidate="txtMobile"
                            ErrorMessage="Please enter your mobile number"
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>College</td>
                    <td>
                        <asp:TextBox ID="txtCollege" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator
                            ID="rfvCollege"
                            runat="server"
                            ControlToValidate="txtCollege"
                            ErrorMessage="Please enter your college name"
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Department</td>
                    <td>
                        <asp:RadioButtonList ID="rblDepartment" runat="server">
                            <asp:ListItem>Computer</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>Mechanical</asp:ListItem>
                            <asp:ListItem>Civil</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator
                            ID="rfvDepartment"
                            runat="server"
                            ControlToValidate="rblDepartment"
                            ErrorMessage="Please select department"
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Event</td>
                    <td>
                        <asp:DropDownList ID="ddlEvent" runat="server" Width="300px">
                            <asp:ListItem Value="">--Select Event--</asp:ListItem>
                            <asp:ListItem>Coding</asp:ListItem>
                            <asp:ListItem>Bug Hunter</asp:ListItem>
                            <asp:ListItem>Figma Fusion</asp:ListItem>
                            <asp:ListItem>Treasure Hunt</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator
                            ID="rfvEvent"
                            runat="server"
                            ControlToValidate="ddlEvent"
                            InitialValue=""
                            ErrorMessage="Please select event"
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator
                            ID="rfvGender"
                            runat="server"
                            ControlToValidate="rblGender"
                            ErrorMessage="Please select gender"
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Skills</td>
                    <td>
                        <asp:CheckBoxList ID="cblSkills" runat="server">
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Java</asp:ListItem>
                            <asp:ListItem>Python</asp:ListItem>
                            <asp:ListItem>AI</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        <asp:CustomValidator
                            ID="cvSkills"
                            runat="server"
                            ErrorMessage="Please select at least one skill"
                            ForeColor="Red"
                            Display="Dynamic"
                            OnServerValidate="cvSkills_ServerValidate">
                        </asp:CustomValidator>
                    </td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox
                            ID="txtAddress"
                            runat="server"
                            TextMode="MultiLine"
                            Rows="4"
                            Width="300px">
                        </asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator
                            ID="rfvAddress"
                            runat="server"
                            ControlToValidate="txtAddress"
                            ErrorMessage="Please enter address"
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Terms</td>
                    <td>
                        <asp:CheckBox
                            ID="chkTerms"
                            runat="server"
                            Text="I Agree Terms &amp; Conditions" />
                    </td>
                    <td>
                        <asp:CustomValidator
                            ID="cvTerms"
                            runat="server"
                            ErrorMessage="Please accept terms and conditions"
                            ForeColor="Red"
                            Display="Dynamic"
                            OnServerValidate="cvTerms_ServerValidate">
                        </asp:CustomValidator>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button
                            ID="btnRegister"
                            runat="server"
                            Text="Register"
                            Width="150px" />
                    </td>
                    <td></td>
                </tr>

            </table>

        </div>

    </form>

</body>
</html>