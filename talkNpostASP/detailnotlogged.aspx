<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagenotlogged.master" AutoEventWireup="true" CodeFile="detailnotlogged.aspx.cs" Inherits="detailnotlogged" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style12 {
            width: 304px;
            height: 38px;
        }
        .auto-style11 {
            width: 304px;
            height: 108px;
        }
        .auto-style10 {
            margin-left: 6px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            height: 31px;
            width: 227px;
        }
        .auto-style13 {
            height: 27px;
            width: 227px;
        }
        .auto-style14 {
            width: 227px;
        }
        .auto-style15 {
            width: 20%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" align="center">
        <tr >
            <td align="center">
                <asp:Label ID="Label9" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Size="XX-Large" ForeColor="#90705A" Height="40px" Text="About" Width="100%"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contentName" DataSourceID="SqlDataSource1" ShowHeader="False" Width="70%" AllowPaging="True" CellPadding="0" PageSize="3">
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
                                    <asp:Image ID="Image3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="100px" ImageUrl='<%# Eval("contentImage") %>' Width="80px" />
                                    <br />
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Rating out of 100: "></asp:Label>
                                    <asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("contentScore") %>'></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label10" runat="server" BackColor="#90705A" BorderStyle="Solid" Font-Bold="True" Font-Names="Algerian" Font-Size="Large" Text='<%# Eval("categoryName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label12" runat="server" Font-Italic="True" Font-Size="X-Large" Text='<%# Eval("contentName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="Label13" runat="server" Text="Posted by: "></asp:Label>
                                    <asp:Label ID="Label14" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("contentDate") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <PagerStyle HorizontalAlign="Center" />
                </asp:GridView></center>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT contentID, contentName, contentContent, categoryName, userName, contentDate, contentImage, contentStatus, contentScore FROM tblcontent WHERE (contentName = @contentName)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="contentName" QueryStringField="contentName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <center><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="commentID" DataSourceID="SqlDataSource2" Width="70%" ShowHeader="False">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width:100%;" align="center">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("commentComment") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="background-color: #DFD7D0">
                                            <asp:Label ID="Label13" runat="server" Text="Comment posted by: "></asp:Label>
                                            <asp:Label ID="Label14" runat="server" Font-Underline="True" Text='<%# Eval("userName") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("commentDate") %>' Font-Bold="True"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView></center>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:talknpost1ConnectionString %>" SelectCommand="SELECT * 
FROM tblcomment 
WHERE (contentName = @contentName)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="contentName" QueryStringField="contentName" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

