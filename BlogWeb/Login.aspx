<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlogWeb.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div" style="width: 40%; margin-left: 10%; margin-right: 2%">
        <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" CssClass="login-title" Text="Giriş Yap"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblname" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="tbmaill" CssClass="form-control login" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblmail" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="tbpass" CssClass="form-control login" runat="server" TextMode="password"></asp:TextBox>

            <br />

            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Button" />
        </form>
    </div>

    <style>
        .div {
            margin-top: 20px;
            width: 40%;
            margin-left: 10%;
            margin-right: 2%;
        }

        .login {
            width: 50%;
        }

        .login-title {
            font-size: 30px;
        }

        .lblerror {
            margin-left: 15px;
        }
    </style>


</asp:Content>
