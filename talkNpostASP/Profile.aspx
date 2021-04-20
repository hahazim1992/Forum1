<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 551px;
        }
        .auto-style7 {
            width: 741px;
        }
        .auto-style6 {
            height: 96px;
        }
        .auto-style5 {
            width: 208px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="Welcome, " Font-Size="Large"></asp:Label>
    <asp:Label ID="lbluser" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Label"></asp:Label>
                ,
    <asp:Label ID="lbluserstatus" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Text="Label" Font-Underline="True" ForeColor="#FF0202"></asp:Label>
            </td>
        </tr>
        </table>
    <table style="width:100%;" cellspacing="7">
        <tr>
            <td style="border: 3px double #90705A" colspan="2" class="auto-style6">
                <br />
                <center><asp:Label ID="Label1" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Change Password" Width="100%"></asp:Label></center>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="username"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtusername" runat="server" BorderStyle="None" Enabled="False"></asp:TextBox>
                <asp:TextBox ID="txtsecretoldpw" runat="server" BorderStyle="None" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="old password"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtoldpassword" runat="server" BorderStyle="None" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator3" runat="server" BackColor="#7E5E4E" BorderStyle="None" ControlToCompare="txtoldpassword" ControlToValidate="txtsecretoldpw" ErrorMessage="Old password does not match!" Font-Italic="True" Font-Size="Medium"></asp:CompareValidator>
            &nbsp;<asp:Label ID="lbldenieddelete" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Larger" Text="Label" Font-Underline="True" ForeColor="#FF0202" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="New Password"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtnewpassword" runat="server" BorderStyle="None" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#7E5E4E" BorderStyle="None" ControlToValidate="txtnewpassword" ErrorMessage="Cannot be empty!" Font-Italic="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="confirm new password"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtconfirmpw" runat="server" BorderStyle="None" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" BackColor="#7E5E4E" BorderStyle="None" ControlToCompare="txtnewpassword" ControlToValidate="txtconfirmpw" ErrorMessage="New password does not match!" Font-Italic="True" Font-Size="Medium"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">&nbsp;</td>
            <td align="center" style="border: 3px double #90705A">
                <asp:Button ID="btnreg" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Change Password" Width="250px" OnClick="btnreg_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelAcc" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Delete Account" Width="250px" CausesValidation="False" OnClick="btnDelAcc_Click" />
                <br />
&nbsp;</td>
        </tr>
        </table>
</asp:Content>

