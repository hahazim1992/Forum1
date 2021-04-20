<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="_Default" %>

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
                <center><asp:Label ID="Label1" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Creating Content" Width="100%"></asp:Label></center>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Title"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtname" runat="server" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please insert a title!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="User Status"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtstatus" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Upload Image"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:FileUpload ID="uploadpicture" runat="server" BorderColor="#7E5E4E" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Algerian" />
            &nbsp;
    <asp:Label ID="lbldenied" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Text="Label" Font-Underline="True" ForeColor="#FF0202" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="Category"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:DropDownList ID="drpCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoryName" DataValueField="categoryName">
                    <asp:ListItem>Educational</asp:ListItem>
                    <asp:ListItem>Politics</asp:ListItem>
                    <asp:ListItem>Entertainment</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drpCategory" ErrorMessage="Please choose one!"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT [categoryName] FROM [tblcategory]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Content"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtContent" runat="server" BorderStyle="None" Height="70px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContent" ErrorMessage="Cannot be empty!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">&nbsp;</td>
            <td align="center" style="border: 3px double #90705A">
                <asp:Button ID="btnreg" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Submit" Width="250px" OnClick="btnreg_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

