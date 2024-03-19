<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddBlog.aspx.cs" Inherits="BlogWeb.AddBlog" %>









<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <form id="form1" runat="server">



        <table id="tablos" class="table table-bordered">
            <tr>
                <td style="width: 356px">Makaleniz Hangi Alan ile İlgili</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" CssClass="textboxx form-control" runat="server" Width="194px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 356px">İsminiz Nedir</td>
                <td>
                    <asp:TextBox ID="TextBox2" CssClass="textboxx form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 356px">Makalenizin Başlığı Nedir?</td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="textboxx form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 356px">Forograf eklemek ister misiniz?</td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="textboxx form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 356px">İçeriğinizi giriniz:</td>
                <td>
                    <asp:TextBox ID="TextBox4" CssClass="textboxx form-control" runat="server" Height="198px" TextMode="MultiLine" Width="288px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 356px">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click1" Text="Gönder" Width="124px" />
                </td>
            </tr>
        </table>



    </form>



</asp:Content>
