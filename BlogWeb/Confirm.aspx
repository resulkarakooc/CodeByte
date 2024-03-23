<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="BlogWeb.Confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Onay Bekleyen Makaleler</h1>

    <asp:DataList ID="DataList1" runat="server">
        <itemtemplate>
            <table class="table table-bordered" style="width: 100%" >
                <tr>
                    <td style="width:10%;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("writerName") %>'></asp:Label>
                    </td>
                    <td style="width:10%;">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("deparName") %>'></asp:Label>
                    </td>
                    <td style="width:20%;">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("blogTitle") %>'></asp:Label>
                    </td>
                    <td style="width:10%;">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("blogImg") %>'></asp:Label>
                    </td>
                    <td style="width:50%;">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("bdescription") %>'></asp:Label>
                    </td>
                    <td>
                        <a href="Confirmonay.aspx?id=<%#Eval("blogID") %>"><div class="btn btn-warning">Onayla</div></a>
                    </td>
                </tr>
            </table>
        </itemtemplate>
    </asp:DataList>

</asp:Content>
