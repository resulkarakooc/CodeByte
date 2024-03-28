<%@ Page Title="" Language="C#" MasterPageFile="/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="eddarticle.aspx.cs" Inherits="BlogWeb.mediumish_html.eddarticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!--head içerik-->
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" >

        <h1><asp:Label ID="pageTitle" CssClass="pageTitle" runat="server" Text="Yeni Makale Oluştur"></asp:Label></h1>

        
            <div style="width:80%;">
                <div class="form-group">
                    <asp:Label AssociatedControlID="Drdepar" ID="Label1" runat="server" Text="Alan Seçiniz:"></asp:Label>
                    <asp:DropDownList ID="Drdepar" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <asp:Label AssociatedControlID="tbtitle" ID="Label2" runat="server" Text="Makale Başlığı"></asp:Label>
                    <asp:TextBox ID="tbTitle" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label AssociatedControlID="tbimg" ID="Label3" runat="server" Text="Kapak Resmi Ekle"></asp:Label>
                    <asp:TextBox ID="tbimg" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label AssociatedControlID="tbflag" ID="Label4" runat="server" Text="Alıntı Ekle"></asp:Label>
                    <asp:TextBox ID="tbflag" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label AssociatedControlID="tbicerik" ID="Label5" runat="server" Text="Makale"></asp:Label>
                    <asp:TextBox ID="tbicerik" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
                <asp:Button ID="SubmitBtn" runat="server" CssClass="btn btn-success" OnClick="SubmitBtn_Click" Text="Yayınla" />

            </div>

      
    </div>

</asp:Content>
