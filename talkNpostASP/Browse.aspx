<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagenotlogged.master" AutoEventWireup="true" CodeFile="Browse.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 551px;
        }
        .auto-style9 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" cellspacing="7" align="center">
        <tr>
            <td style="border: 3px double #90705A">
                <center><asp:Label ID="lblcategory" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Funny" Width="100%"></asp:Label></center>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSource3" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Width="100%">
                    <AlternatingRowStyle BackColor="#CE9D6C" BorderColor="Black" BorderStyle="None" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td rowspan="3" style="width: 20%" align="center">
                                            <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            <br />
                                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                            <asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detailnotlogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label8" runat="server" Text='Posted by: '></asp:Label>
                                            &nbsp;<asp:Label ID="Label5" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * FROM tblcontent WHERE (categoryName = @categoryName) and contentStatus not in ('premium')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="categoryName" QueryStringField="categoryName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSource4" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Width="100%">
                    <AlternatingRowStyle BackColor="#CE9D6C" BorderColor="Black" BorderStyle="None" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td rowspan="4" style="width: 20%" align="center">
                                            <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            <br />
                                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                            <asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" Text='<%# Eval("categoryName") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detailnotlogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label11" runat="server" Text='Posted by: '></asp:Label>
                                            &nbsp;<asp:Label ID="Label12" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                            &nbsp;<asp:Label ID="lbluserstatus" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="False" ForeColor="#FF0202" Text='<%# Eval("contentStatus") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * FROM tblcontent where contentStatus not in ('premium')">
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
            </td>
        </tr>
        </table>
</asp:Content>

