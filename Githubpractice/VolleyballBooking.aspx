<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VolleyballBooking.aspx.cs" Inherits="Github_practice.VolleyballBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 366px;
        }
        .auto-style3 {
            height: 26px;
            width: 366px;
        }
        .auto-style4 {
            text-align: right;
            width: 79px;
        }
        .auto-style5 {
            height: 26px;
            text-align: right;
            width: 79px;
        }
        .auto-style6 {
            width: 79px;
        }
        .auto-style7 {
            width: 366px;
            text-align: center;
        }
        .auto-style8 {
            width: 163px;
        }
        .auto-style9 {
            width: 79px;
            height: 26px;
        }
        .auto-style10 {
            width: 163px;
            height: 26px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            text-align: right;
            width: 79px;
            height: 31px;
        }
        .auto-style13 {
            width: 366px;
            height: 31px;
        }
        .auto-style14 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style11" colspan="3">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="20pt" Text="Visual volleyball coaching class booking"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td id="lblName" class="auto-style5">
                        <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                    </td>
                    <td id="txtName" class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style8" rowspan="5">
                        <asp:Calendar ID="calDates" runat="server">
                            <DayHeaderStyle BackColor="#00FF99" />
                            <DayStyle BackColor="#999999" />
                            <SelectedDayStyle BackColor="#66FF66" />
                            <TodayDayStyle BackColor="#669900" />
                            <WeekendDayStyle BackColor="Lime" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSurname" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="lblDisplay1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblStudentNumber" runat="server" Text="Student Number: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtStudentNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtStudentNumber" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="lblDisplay2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblCampus" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="rdoPC" runat="server" GroupName="campuses" Text="PC" />
                        <asp:RadioButton ID="rdoVC" runat="server" GroupName="campuses" Text="VC" />
                        <asp:RadioButton ID="rdoMC" runat="server" GroupName="campuses" Text="MC" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnBook" runat="server" OnClick="btnBook_Click" Text="Book" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnPizza" runat="server" Text="Order Pizza" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
