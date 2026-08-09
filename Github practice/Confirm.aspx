<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="Github_practice.Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 305px;
        }
        .auto-style2 {
            width: 636px;
        }
        .auto-style3 {
            width: 305px;
            text-align: right;
        }
        .auto-style4 {
            width: 305px;
            text-align: right;
            height: 29px;
        }
        .auto-style5 {
            width: 636px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 305px;
            text-align: right;
            height: 111px;
        }
        .auto-style8 {
            width: 636px;
            height: 111px;
        }
        .auto-style9 {
            height: 111px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1"><a class="logo navbar-btn pull-left" href="https://www.nwu.ac.za/" rel="home" title="Home">
                        <img alt="Home" src="https://www.nwu.ac.za/sites/www.nwu.ac.za/files/NWU-logo-pers_1.png" /></a><br />
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblInformation" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#660066" Text="    GYM Booking System"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblInfo" runat="server" Font-Bold="True" Font-Size="Large" Text=" =====   Booking Details  ====="></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblNameDisplay" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblSurnameDisplay" runat="server"></asp:Label>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblUniversityNo" runat="server" Text="University NO:"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblStudentNoDisplay" runat="server"></asp:Label>
                        &nbsp;</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblType" runat="server" Text="Appointment Type:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblTypeDisplay" runat="server"></asp:Label>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblInfoTwo" runat="server" Font-Bold="True" Font-Size="Large" Text=" =====   Thank for Booking ====="></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">
                        <br />
                        <br />
                        <asp:Button ID="btnMenu" runat="server" OnClick="btnMenu_Click" Text="Back Main page" Width="216px" />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
