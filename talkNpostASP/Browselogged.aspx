<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Browselogged.aspx.cs" Inherits="_Default" %>

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
    <table style="width:100%;">
        <tr>
            <td>
    <asp:Label ID="Label5" runat="server" Text="Welcome, " Font-Size="Large"></asp:Label>
    <asp:Label ID="lbluser" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Label"></asp:Label>
                ,
    <asp:Label ID="lbluserstatus" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Text="Label" Font-Underline="True" ForeColor="#FF0202"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width:100%;" cellspacing="7" align="center">
        <tr>
            <td style="border: 3px double #90705A">
                <center><asp:Label ID="lblcategory" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="Funny" Width="100%"></asp:Label></center>
                <asp:GridView ID="GridViewcategorypremium" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSourcecategorypremium" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Width="100%" Visible="False">
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
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detaillogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label8" runat="server" Text='Posted by: '></asp:Label>
                                            &nbsp;<asp:Label ID="Label19" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
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
                <asp:SqlDataSource ID="SqlDataSourcecategorypremium" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * FROM tblcontent WHERE (categoryName = @categoryName)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="categoryName" QueryStringField="categoryName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridViewcategorystandard" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSourcecategorystandard" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Width="100%" Visible="False">
                    <AlternatingRowStyle BackColor="#CE9D6C" BorderColor="Black" BorderStyle="None" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td rowspan="3" style="width: 20%" align="center">
                                            <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            <br />
                                            <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                            <asp:Label ID="Label28" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detaillogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label29" runat="server" Text='Posted by: '></asp:Label>
                                            &nbsp;<asp:Label ID="Label30" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                            &nbsp;<asp:Label ID="lbluserstatus1" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="False" ForeColor="#FF0202" Text='<%# Eval("contentStatus") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label31" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourcecategorystandard" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * FROM tblcontent WHERE (categoryName = @categoryName) 
and contentStatus = 'standard'">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="categoryName" QueryStringField="categoryName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridViewpremiumandstandard" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSourcepremiumandstandard" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Width="100%" Visible="False">
                    <AlternatingRowStyle BackColor="#CE9D6C" BorderColor="Black" BorderStyle="None" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td rowspan="4" style="width: 20%" align="center">
                                            <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            <br />
                                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                            <asp:Label ID="Label21" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" Text='<%# Eval("categoryName") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detaillogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label11" runat="server" Text='Posted by: '></asp:Label>
                                            &nbsp;<asp:Label ID="Label12" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                            &nbsp;<asp:Label ID="lbluserstatus" runat="server" Font-Italic="True" Text='<%# Eval("contentStatus") %>' Font-Bold="False" Font-Size="Large" Font-Underline="False" ForeColor="#FF0202"></asp:Label>
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
                <asp:SqlDataSource ID="SqlDataSourcepremiumandstandard" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * FROM tblcontent">
                </asp:SqlDataSource>
                <asp:GridView ID="GridViewstandard" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSourcestandard" PageSize="4" ShowHeader="False" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Width="100%" Visible="False">
                    <AlternatingRowStyle BackColor="#CE9D6C" BorderColor="Black" BorderStyle="None" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td rowspan="4" style="width: 20%" align="center">
                                            <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            <br />
                                            <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                            <asp:Label ID="Label23" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" Text='<%# Eval("categoryName") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" NavigateUrl='<%# Eval("contentName", "detaillogged.aspx?contentName={0}") %>' Text='<%# Eval("contentName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label24" runat="server" Text='Posted by: '></asp:Label>
                                            &nbsp;<asp:Label ID="Label25" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                            &nbsp;<asp:Label ID="lbluserstatus0" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Large" Font-Underline="False" ForeColor="#FF0202" Text='<%# Eval("contentStatus") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label26" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourcestandard" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * FROM tblcontent
where contentStatus = 'standard'">
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
            </td>
        </tr>
        </table>
</asp:Content>

