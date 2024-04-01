<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="BlogWeb.UsersList" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1>Kayıtlı Yazarlar</h1>
    <table class="table table-bordered tabtab" style="width: 100%">


        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>

                <tr>
                    <td style="width: 120px;">
                        <asp:Label ID="cntUser" runat="server" Text='<%# Eval("writerName") %>'></asp:Label>
                    </td>
                    <td style="width: 200px;">
                        <asp:Label ID="cntMail" runat="server" Text='<%# Eval("writerUnvan") %>'></asp:Label>
                    </td>
                    <td style="width: 800px;">
                        <img style="width:50px" class="author-thumb"
                            src='<%#Eval("writerImg") %>'
                            alt="Sal">
                    </td>
                    <td style="width: 60px;">
                        <a href="Mesagges.aspx?id=<%# Eval("writerMail") %>">
                            <div class="btn btn-danger">Sil</div>
                        </a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </table>
    <style>
        .tablom {
            margin-top: 3%;
            margin-left: 50px;
        }

        .tabtab {
            margin: 0;
        }
    </style>

</asp:Content>
