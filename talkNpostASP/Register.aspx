<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagenotlogged.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 551px;
        }
        .auto-style5 {
            width: 208px;
        }
        .auto-style6 {
            height: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" cellspacing="7">
        <tr>
            <td style="border: 3px double #90705A; background-color: #FFFFFF;" colspan="2" class="auto-style6">
                <br />
                <center><asp:Label ID="Label1" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Register" Width="100%"></asp:Label></center>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Realname"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtname" runat="server" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please insert Name!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="Username"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtusername" runat="server" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername" ErrorMessage="Please insert Username!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="E-mail"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtemail" runat="server" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Please insert E-mail!"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="E-mail format is wrong!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="password"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtpassword" runat="server" BorderStyle="None" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please insert Password!"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcnfmpassword" ErrorMessage="Password does not match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Confirm password"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtcnfmpassword" runat="server" BorderStyle="None" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcnfmpassword" ErrorMessage="Please insert Password!"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcnfmpassword" ErrorMessage="Password does not match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="User Level"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="163px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>premium</asp:ListItem>
                    <asp:ListItem>standard</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please choose one!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">&nbsp;</td>
            <td align="center" style="border: 3px double #90705A">
                <asp:Button ID="btnreg" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Submit" Width="250px" OnClick="btnreg_Click" />
            &nbsp;
                <asp:Button ID="btnreg0" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Back to home" Width="250px" OnClick="btnrCancel_Click" CausesValidation="False" />
            </td>
        </tr>
        </table>
</asp:Content>

