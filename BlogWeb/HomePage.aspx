<%@ Page Title="sel" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BlogWeb.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- içerik başlangıcı-->
    <form id="form1" runat="server" style="margin-left: 100px;">
        <h1 class="titlePage">Makaleler</h1>

        <asp:DataList ID="DataList1" runat="server" style="margin-right: 50%">
            <itemtemplate>
                <table class="table table-bordered" style="height: 270px; width: 71%;">
                    <tr>
                        <td style="height: 46px">
                            <asp:Label ID="Label1" runat="server" cssclass="Label1" Text='<%# Eval("writerName") %>'></asp:Label>
                            &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("deparName") %>'></asp:Label>
                            
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("blogTitle") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                             

                            <asp:Label ID="Label5" CssClass="Label5" runat="server" Text='<%# Eval("bdescription") %>'></asp:Label>
                             

                        </td>
                    </tr>

                </table>
            </itemtemplate>
        </asp:DataList>

    </form>
</asp:Content>
