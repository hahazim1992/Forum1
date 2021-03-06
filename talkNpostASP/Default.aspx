<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagenotlogged.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 551px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 732px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            height: 31px;
        }
        .auto-style13 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" cellspacing="7">
        <tr>
            <td valign="top" align="center" class="auto-style6" rowspan="2" style="border: 3px double #90705A">
                <asp:Label ID="Label9" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Most Searched" Width="100%"></asp:Label>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSource4" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" AllowSorting="True" Width="100%">
                    <AlternatingRowStyle BackColor="#CE9D6C" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="auto-style13">
                                    <tr>
                                        <td rowspan="4" style="width: 35%" align="center">
                                            <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            <br />
                                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                            <asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("categoryName") %>' BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detailnotlogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label13" runat="server" Text='Posted by: '></asp:Label>
                                            <asp:Label ID="Label14" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                            &nbsp;<asp:Label ID="lbluserstatus" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="False" ForeColor="#FF0202" Text='<%# Eval("contentStatus") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT *
FROM tblcontent 
where contentStatus not in ('premium')
ORDER BY contentScore DESC"></asp:SqlDataSource>
                </td>
            <td class="auto-style5" style="border: 3px double #90705A" align="center">
                <asp:Label ID="Label1" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Recent Post" Width="100%"></asp:Label>
                <br />
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSource3" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Width="100%">
                    <AlternatingRowStyle BackColor="#CE9D6C" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td rowspan="4" style="width: 30%" align="center">
                                            <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            <br />
                                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                            <asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("categoryName") %>' BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detailnotlogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label8" runat="server" Text='Posted by: '></asp:Label>
                                            <asp:Label ID="Label5" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                            &nbsp;<asp:Label ID="lbluserstatus" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="False" ForeColor="#FF0202" Text='<%# Eval("contentStatus") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * 
FROM tblcontent 
WHERE (GETDATE() - contentDate &lt; 10)
and contentStatus not in ('premium')
order by contentDate DESC"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr align="center" valign="top">
            <td style="border: 3px double #90705A">
                <asp:Label ID="Label2" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Category" Width="100%"></asp:Label>
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="categoryName" DataSourceID="SqlDataSource2" ShowHeader="False" BorderColor="White" BorderStyle="None" Font-Size="XX-Large" Width="100%" Font-Names="Algerian">
                    <AlternatingRowStyle BackColor="#CE9D6C" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="categoryName" DataNavigateUrlFormatString="Browse.aspx?categoryName={0}" DataTextField="categoryName" ShowHeader="False">
                        <ControlStyle ForeColor="Black" />
                            <HeaderStyle BorderStyle="None" />
                        <ItemStyle Font-Bold="False" Font-Italic="False" HorizontalAlign="Center" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT [categoryName] FROM [tblcategory]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

