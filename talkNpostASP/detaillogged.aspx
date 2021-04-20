<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detaillogged.aspx.cs" Inherits="detaillogged" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style15 {
            width: 20%;
        }
        .auto-style13 {
            height: 27px;
            width: 227px;
        }
        .auto-style9 {
            height: 31px;
            width: 227px;
        }
        .auto-style14 {
            width: 227px;
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
    <table style="width:100%;" align="center">
        <tr >
            <td>
    <asp:Label ID="Label5" runat="server" Text="Welcome, " Font-Size="Large"></asp:Label>
    <asp:Label ID="lbluser" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Label"></asp:Label>
                ,
    <asp:Label ID="lbluserstatus" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Text="Label" Font-Underline="True" ForeColor="#FF0202"></asp:Label>
            </td>
        </tr>
        <tr >
            <td align="center">
                <asp:Label ID="Label9" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="About" Width="100%"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <center>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSource1" ShowHeader="False" Width="70%" AllowPaging="True" CellPadding="0" PageSize="3">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <table style="padding: 8px; width:100%;">
                                        <tr>
                                            <td align="center" class="auto-style15" rowspan="4" style="padding: 8px; background-color: #DFD7D0;">
                                                <asp:Image ID="Image3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" />
                                                <br />
                                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                                <asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style13" style="padding: 8px; width: 30%">
                                                <asp:Label ID="Label10" runat="server" BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" Text='<%# Eval("categoryName") %>'></asp:Label>
                                            </td>
                                            <td rowspan="4" style="padding: 8px; background-color: #DFD7D0">
                                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("contentContent") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style13" style="padding: 8px; width: 30%">
                                                <asp:Label ID="Label12" runat="server" Font-Italic="True" Font-Size="X-Large" Text='<%# Eval("contentName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style9" style="padding: 8px; width: 30%">
                                                <asp:Label ID="Label13" runat="server" Text="Posted by: "></asp:Label>
                                                <asp:Label ID="Label14" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                                &nbsp;<asp:Label ID="lbluserstatus" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="False" ForeColor="#FF0202" Text='<%# Eval("contentStatus") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style14" style="padding: 8px; width: 30%">
                                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <table style="width:100%;">
                                <tr>
                                    <td align="center" rowspan="4" style="width: 35%">
                                        <asp:Image ID="Image4" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" />
                                        <br />
                                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                        <asp:Label ID="Label20" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label21" runat="server" BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" Text='<%# Eval("categoryName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label22" runat="server" Font-Italic="True" Font-Size="X-Large" Text='<%# Eval("contentName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label23" runat="server" Text="Posted by: "></asp:Label>
                                        <asp:Label ID="Label24" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <PagerStyle HorizontalAlign="Center" />
                    </asp:GridView>
                </center>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT contentID, contentName, contentContent, categoryName, userName, contentDate, contentImage, contentScore, contentStatus FROM tblcontent WHERE (contentName = @contentName)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="contentName" QueryStringField="contentName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <center>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="commentID" DataSourceID="SqlDataSource2" Width="70%" ShowHeader="False" BorderColor="#7E5E4E" BorderStyle="Dotted" BorderWidth="2px">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <table style="width:100%;" align="center">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label26" runat="server" Text='<%# Eval("commentComment") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="background-color: #DFD7D0">
                                                <asp:Label ID="Label27" runat="server" Text="Comment posted by: "></asp:Label>
                                                <asp:Label ID="Label28" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label29" runat="server" Text='<%# Eval("commentDate") %>' Font-Bold="True"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </center>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * 
FROM tblcomment 
WHERE (contentName = @contentName)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="contentName" QueryStringField="contentName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
    <table style="width:100%;" align="center">
        <tr>
            <td align="center">
                            <asp:Label ID="lblrate" runat="server" Text="Please Rate this content 0-100" BackColor="White" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="XX-Large" Width="600px"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="txtrate" runat="server" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" Font-Size="X-Large"></asp:TextBox>
                <br />
&nbsp;<asp:Label ID="lblratesuccessorfail" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="True" ForeColor="#FF0202" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnrate" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Rate!" Width="250px" Font-Size="Large" OnClick="btnrate_click" />
            </td>
        </tr>
    </table>
    <br />
    <table style="width:70%;" cellspacing="7" align="center">
        <tr>
            <td style="border: 3px double #90705A" colspan="2" class="auto-style6">
                <br />
                <center><asp:Label ID="Label1" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Post Comment" Width="100%"></asp:Label></center>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Content Name"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtcontentname" runat="server" BorderStyle="None" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" ForeColor="#663300" Text="Username"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtusername" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="Large" Text="Comment"></asp:Label>
            </td>
            <td style="border: 3px double #90705A">
                <asp:TextBox ID="txtcomment" runat="server" BorderStyle="None" Height="70px" TextMode="MultiLine" Width="99%"></asp:TextBox>
                <br />
                <asp:Label ID="lblcommentifempty" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="True" ForeColor="#FF0202" Visible="False"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border: 3px double #90705A">&nbsp;</td>
            <td align="center" style="border: 3px double #90705A">
                <asp:Button ID="btncomment" runat="server" BackColor="#90705A" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Height="40px" Text="Submit Comment" Width="250px" OnClick="btncomment_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

