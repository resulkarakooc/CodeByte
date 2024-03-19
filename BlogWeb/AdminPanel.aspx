<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="BlogWeb.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" runat="server" CssClass="tablom">
        <ItemTemplate>
            <table class="table table-bordered tabtab" style="width: 100%">
                <tr>
                    <td style="width:120px;">
                        <asp:Label ID="cntUser" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                    </td>
                    <td style="width:200px;">
                        <asp:Label ID="cntMail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </td>
                    <td style="width:800px;">
                        <asp:Label ID="cntMessages" runat="server" Text='<%# Eval("Messages") %>'></asp:Label>
                    </td>
                    <td style="width:60px;">
                        <a href="Mesagges.aspx?id=<%# Eval("msID") %>"><div class="btn btn-danger">Sil</div>
                        </a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <style>
        .tablom{
            margin-top:3%;
            margin-left:50px;
        }
        .tabtab{
            margin:0;
        }
    </style>


    
  


    
</asp:Content>
