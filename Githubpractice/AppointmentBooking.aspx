<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentBooking.aspx.cs" Inherits="Github_practice.AppointmentBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #00CC99">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 248px;
        }
        .auto-style2 {
            width: 248px;
        }
        .auto-style3 {
            width: 691px;
        }
        .auto-style4 {
            text-align: center;
            width: 248px;
            height: 26px;
        }
        .auto-style5 {
            width: 691px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            text-align: center;
            width: 248px;
            height: 44px;
        }
        .auto-style8 {
            width: 691px;
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblHeading" runat="server" style="font-size: xx-large; font-weight: 700; color: #9900CC" Text="Book your appointment with Dr.C# to See Sharp."></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td rowspan="5">
                    <asp:Calendar ID="Calendar1" runat="server" style="margin-left: 64px" Width="348px">
                        <TodayDayStyle BackColor="#FFFF66" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">First Name:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLastName" runat="server" Width="197px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please enter your last name!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Student Number:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtStudentNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtStudentNumber" ErrorMessage="Please enter your student number!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;<asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="#FF3300">Please enter your email!</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter the correct format email!" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblSelectService" runat="server" Text="Select Service:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlSelectService" runat="server" Height="34px" Width="209px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Eye Exam</asp:ListItem>
                        <asp:ListItem>Contact Lens Fitting</asp:ListItem>
                        <asp:ListItem>Eye Health Advice</asp:ListItem>
                        <asp:ListItem>Care for Eye Injuries</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlSelectService" ErrorMessage="Please select a service!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblPaymentMethod" runat="server" Text="Payment Method:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:RadioButton ID="rdoCash" runat="server" GroupName="PaymentMethods" Text="Cash" />
&nbsp;
                    <asp:RadioButton ID="rdoMedicalAid" runat="server" GroupName="PaymentMethods" Text="Medical Aid" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblRadioButtonError" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnBook" runat="server" BackColor="#99CCFF" Font-Bold="True" OnClick="btnBook_Click" Text="Book" Width="210px" />
                </td>
                <td>
                    <asp:Label ID="lblProperMessage" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="lblErrorMessage" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblGridViewHeading" runat="server" Font-Bold="True" Text="Bookings"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="gvBookings" runat="server" Width="552px">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
