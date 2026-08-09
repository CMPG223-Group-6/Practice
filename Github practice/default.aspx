<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Github_practice._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 153px;
        }
        .auto-style2 {
            height: 153px;
            width: 652px;
        }
        .auto-style3 {
            width: 652px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Size="25pt" Text="Welcome to the Booking System"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" Height="370px" style="text-align: center" Width="640px">
                            <asp:Label ID="lblSignUp" runat="server" Text="Sign Up" Font-Bold="True" Font-Size="15pt"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="lblFName" runat="server" Text="Enter First Name:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtFName" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="lblLName" runat="server" Text="Enter Last Name:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName" ErrorMessage="*" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtLName" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="lblEmail" runat="server" Text="Enter Email:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtEmail" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="lblStdNum" runat="server" Text="Enter Student Number:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStdNum" ErrorMessage="*" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                            &nbsp;
                            <asp:TextBox ID="txtStdNum" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="btnSignUp" runat="server" Height="46px" OnClick="btnSignUp_Click" Text="Sign Up" ValidationGroup="SignUp" Width="128px" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" Height="307px" style="text-align: center; margin-left: 0px">
                            <asp:Label ID="lblSignIn" runat="server" Text="Sign In" Font-Bold="True" Font-Size="15pt"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="lblUserID" runat="server" Text="Enter User ID:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserID" ErrorMessage="*" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtUserID" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="lblSignInEmail" runat="server" Text="Enter Email:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSignInEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtSignInEmail" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="lblSignInStdNum" runat="server" Text="Enter Student Number:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSignInStdNum" ErrorMessage="*" ForeColor="Red" ValidationGroup="SignIn"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="txtSignInStdNum" runat="server" Width="192px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="btnSignIn" runat="server" Height="46px" OnClick="btnSignIn_Click" Text="Sign In" ValidationGroup="SignIn" Width="128px" />
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
