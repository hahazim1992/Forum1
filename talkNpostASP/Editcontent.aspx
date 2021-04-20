<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editcontent.aspx.cs" Inherits="_Default" %>

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
                <center><asp:Label ID="Label1" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Edit Content" Width="100%"></asp:Label></center>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Title"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="contentName" DataValueField="contentName" Width="129px">
                </asp:DropDownList>
                <asp:Button ID="btnbeginupdate" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="25px" Text="Begin Update" Width="250px" OnClick="btnbeginupdate_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="select contentName
from tblcontent
where userName = @userName">
                    <SelectParameters>
                        <asp:SessionParameter Name="userName" SessionField="username" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="You have no content yet, First go and create!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="Content image"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:Image ID="Imagecontent" runat="server" Height="100px" Visible="False" Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Edit current content"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtupdatecontent" runat="server" BorderStyle="None" Height="70px" TextMode="MultiLine" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">&nbsp;</td>
            <td align="center" style="border: 3px double #90705A">
                <asp:Button ID="btnupdate" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Update Content" Width="250px" OnClick="btnupdate_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndel" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Delete Content" Width="250px" OnClick="btndel_Click" CausesValidation="False" />
            </td>
        </tr>
        </table>
</asp:Content>

