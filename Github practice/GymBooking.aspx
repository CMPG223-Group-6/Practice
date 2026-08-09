<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GymBooking.aspx.cs" Inherits="Github_practice.GymBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 550px;
            margin-top: 0px;
        }
        .auto-style8 {
        }
        .auto-style9 {
            height: 49px;
            width: 595px;
        }
        .auto-style11 {
            height: 49px;
            text-align: right;
            width: 314px;
        }
        .auto-style20 {
            height: 50px;
        }
        .auto-style21 {
            width: 314px;
            height: 92px;
            text-align: right;
        }
        .auto-style22 {
            height: 92px;
            width: 595px;
        }
        .auto-style23 {
            height: 92px;
        }
        .auto-style26 {
            width: 314px;
            height: 50px;
            text-align: right;
        }
        .auto-style27 {
            height: 50px;
            width: 595px;
        }
        .auto-style28 {
            height: 136px;
            text-align: right;
            width: 314px;
        }
        .auto-style29 {
            height: 136px;
            width: 595px;
        }
    </style>
</head>
<body style="height: 716px">
    <form id="form1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style28"><a class="logo navbar-btn pull-left" href="https://www.nwu.ac.za/" rel="home" title="Home">
                    <img alt="Home" src="https://www.nwu.ac.za/sites/www.nwu.ac.za/files/NWU-logo-pers_1.png" /></a></td>
                <td class="auto-style29">
                    <br />
                    <br />
                    <asp:Label ID="lblInformation" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#660066" Text="    GYM Booking System"></asp:Label>
                    <br />
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtName" runat="server" Width="260px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="  Please Enter Name" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8" rowspan="7">
                    <asp:GridView ID="gdvDisplay" runat="server" Height="398px" Width="499px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtSurname" runat="server" Width="260px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="  Please Enter Surname" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="lblUniversityNo" runat="server" Text="University NO:"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtUniNo" runat="server" Width="260px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUniNo" ErrorMessage="  Please Enter UniversityNo" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    <br />
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtEmail" runat="server" Width="260px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="  Please Enter Email" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtAge" runat="server" Width="260px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" ErrorMessage="  Please Enter Age" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:RadioButton ID="radFemale" runat="server" GroupName="Gender" Text="Female" ValidationGroup="Gender" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="radMale" runat="server" GroupName="Gender" Text="Male" ValidationGroup="Gender" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="radOther" runat="server" GroupName="Gender" Text="Other" ValidationGroup="Gender" />
&nbsp;&nbsp;
                    <asp:Label ID="lblErrorGender" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="lblPortolfolio" runat="server" Text="Portofolio:"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:RadioButton ID="radStudent" runat="server" GroupName="Portofolio" Text="Student" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="radStaff" runat="server" GroupName="Portofolio" Text="Staff" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="lblType" runat="server" Text="Appointment Type:"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="ddrlType" runat="server" Width="266px">
                        <asp:ListItem Selected="True" Value="-1">Select Appointment</asp:ListItem>
                        <asp:ListItem Value="0">Cardio Sessions</asp:ListItem>
                        <asp:ListItem Value="1">Strength/Weight Training</asp:ListItem>
                        <asp:ListItem Value="2">Swimming Lessons</asp:ListItem>
                        <asp:ListItem Value="3">Yoga Classes</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddrlType" ErrorMessage="  Please Select Appointment" Font-Bold="False" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22">
                    <asp:Button ID="btnViewInfo" runat="server" OnClick="btnViewInfo_Click" Text="View my Information" Width="230px" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm Booking" Width="230px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
