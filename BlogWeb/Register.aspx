<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BlogWeb.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="width:40%; margin-left:10%; margin-right:2%;">
        <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" CssClass="register-title" Text="Kayıt ol"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblname" runat="server" Text="İsminiz"></asp:Label>
            <br />
            <asp:TextBox ID="tbname" Cssclass="form-control register" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblmail" runat="server" Text="Mail"></asp:Label>
            <br />
            <asp:TextBox ID="tbmail"  Cssclass="form-control register" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="tbpass"  Cssclass="form-control register" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="lblabout"  runat="server" Text="About"></asp:Label>
            <br />
            <asp:TextBox ID="tbabout"  Cssclass="form-control register" runat="server" Height="132px" TextMode="MultiLine" ></asp:TextBox>
            <br />
            <asp:Button ID="registerbtn" text="KAYIT OL" CssClass="btn btn-primary" OnClick="registerbtn_click" runat="server" />
            <asp:Label ID="lblerror" CssClass="lblerror" runat="server" Text=""></asp:Label>
            
        </form>



    </div>
    <style>
        .register{
            width:50%;
        }

        .register-title{
            font-size:30px;
        }

        .lblerror{
            margin-left:15px;
        }
    </style>

</asp:Content>
