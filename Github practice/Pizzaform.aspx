<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pizzaform.aspx.cs" Inherits="Github_practice.Pizzaform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 102px;
        }
        .auto-style2 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #00CCFF; text-align: center;">
            <asp:Label ID="Label1" runat="server" ForeColor="Fuchsia" style="font-weight: 700; font-size: xx-large" Text="Complete this form to order pizza"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table style="width:100%;">
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtName" runat="server" style="text-align: left"></asp:TextBox>
                    </td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Enter Name!" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Enter Email!" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter correct email!" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="lblSelectSize" runat="server" Text="Select Size:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="ddlSize" runat="server">
                            <asp:ListItem Value="0">Small</asp:ListItem>
                            <asp:ListItem Value="1">Medium</asp:ListItem>
                            <asp:ListItem Value="2">Large</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="rfvSize" runat="server" ErrorMessage="Enter Size!" ControlToValidate="ddlSize"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left" class="auto-style1">
                        <asp:Label ID="lblSelectToppings" runat="server" Text="Select Toppings:"></asp:Label>
                    </td>
                    <td style="text-align: left" class="auto-style1">
                        <asp:ListBox ID="lbToppings" runat="server">
                            <asp:ListItem Value="0">Cheese</asp:ListItem>
                            <asp:ListItem Value="1">Pepperoni</asp:ListItem>
                            <asp:ListItem Value="2">Mushroom</asp:ListItem>
                            <asp:ListItem Value="3">Olives</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td style="text-align: left" class="auto-style1">
                        <asp:RequiredFieldValidator ID="rfvToppings" runat="server" ErrorMessage="Enter Topping" ControlToValidate="lbToppings"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="lblSelectCrust" runat="server" Text="Select crust:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:RadioButton ID="rbThin" runat="server" GroupName="Crusttype" Text="Thin" />
                        <br />
                        <asp:RadioButton ID="rbThick" runat="server" GroupName="Crusttype" Text="Thick" />
                        <br />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="lblValidateCrust" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left" class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td style="text-align: left">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:CheckBox ID="ckbTip" runat="server" AutoPostBack="True" OnCheckedChanged="ckbTip_CheckedChanged" Text="Add a tip" />
                    </td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="rfvTip" runat="server" ErrorMessage="Enter tip!" ControlToValidate="txtTip"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtTip" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="btnOrder" runat="server" Text="Order" BackColor="#99FF33" Height="51px" OnClick="btnOrder_Click" Width="113px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBacktoMenu" runat="server" BackColor="#FF0066" Height="50px" OnClick="btnBacktoMenu_Click" Text="Menu" Width="95px" />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
