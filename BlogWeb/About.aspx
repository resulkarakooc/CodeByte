<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BlogWeb.About" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="arean">
        <div style="margin: 2%;" class="container">

            <form id="form1" runat="server">
                <asp:Label ID="Label1" runat="server" CssClass="iletisim-title" Text="İletişim"></asp:Label>
                <br />
                <br />
                <asp:Label AssociatedControlID="TextBox1" ID="Label2" runat="server" CssClass="" Text="İsminiz"></asp:Label>
                <asp:TextBox ID="TextBox1" placeholder="name" CssClass="form-group form-control contact" runat="server"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="TextBox2" ID="Label3" runat="server" CssClass="" Text="Mail adresiniz"></asp:Label>
                <asp:TextBox ID="TextBox2" AutoCompleteType="Email" TextMode="Email" placeholder="name@example.com" CssClass="form-group form-control contact" runat="server"></asp:TextBox>
                <br />
                <asp:Label AssociatedControlID="TextBox3" ID="Label4" runat="server" CssClass="" Text="Mesajınız"></asp:Label>
                <asp:TextBox ID="TextBox3" CssClass="form-group form-control contact" runat="server" Height="227px" TextMode="MultiLine" Width="297px"></asp:TextBox>
                <br />
                <asp:Button ID="ContactButon" CssClass="btn btn-primary" runat="server" OnClick="ContactButon_Click" Text="Gonder" />
            </form>

        </div>

        <div class="image-div">
            <asp:Image ID="imgExample" CssClass="contact-image" runat="server" ImageUrl="https://www.avansas.com/blog/wp-content/uploads/2018/12/iletisim-becerileri.jpg" AlternateText="Example Image" />



        </div>
    </div>

    <style>
        .iletisim-title {
            font-size: 30px;
            font-family: sans-serif;
        }

        .contact {
            width: 80%
        }

        .container {
            height:100%;
        }

        .arean {
            display: flex;
            justify-content: space-around;
            height:100%;
        }

        .image-div{
            display: flex;
            align-items: center;
            height:100%;  
            margin-right:10%;
        }

        .contact-image{
            margin-top:10%;
            margin-right:10%;
        }
    </style>











</asp:Content>
