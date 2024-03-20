<%@ Page Title="" Language="C#" MasterPageFile="~/mediumish-html/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BlogWeb.mediumish_html.LoginPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="assets/css/LoginCss.css" />

</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

        <section class="forms-section">
            <h1 runat="server" id="titlee" class="section-titlee">Giriş Yap veya Kaydol</h1>
            <div class="forms">
                <div class="form-wrapper is-active">
                    <button type="button" class="switcher switcher-login">
                        Login
        <span class="underline"></span>
                    </button>
                    <div class="form form-login">

                        <fieldset>
                            <legend>Please, enter your email and password for login.</legend>
                            <div class="input-block">
                                <label style="margin-bottom:0px;"  for="login-email">E-maıl</label>
                                <asp:TextBox CssClass="login-email " ID="tbmaill" runat="server"></asp:TextBox>
                                <!-- -->

                            </div>
                            <div class="input-block">
                                <label style="margin-bottom:0px;"  for="login-password">Password</label>
                                <asp:TextBox CssClass="login-password " ID="tbpass" runat="server"></asp:TextBox>
                                <!-- -->

                            </div>
                        </fieldset>
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="ButtonLogin_Click" Text="Giris" />
                    </div>
                </div>
                <div class="form-wrapper">
                    <button type="button" class="switcher switcher-signup">
                        Sign Up
        <span class="underline"></span>
                    </button>




                    <div class="form form-signup">
                        <fieldset>
                            <legend>Please, enter your email, password and password confirmation for sign up.</legend>

                            <div class="input-block">
                                <label  style="margin-bottom:0px;" for="signup-email register">Kullanıcı Adı</label>
                                <asp:TextBox CssClass="signup-email " ID="tbname" runat="server"></asp:TextBox>
                            </div>

                            <div class="input-block">
                                <label style="margin-bottom:0px;"  for="signup-email register">E-mail</label>
                                <asp:TextBox CssClass="signup-email " ID="tbmail" runat="server" TextMode="Email"></asp:TextBox>
                            </div>

                            <div class="input-block">
                                <label style="margin-bottom:0px;" for="signup-password register">Password</label>
                                <asp:TextBox CssClass="signup-password " ID="tbbpass" runat="server" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="input-block">
                                <label style="margin-bottom:0px;" for="signup-password-confirm register">Password Confirm</label>
                                <asp:TextBox CssClass="signup-password-confirm " ID="tbbpassconfirm" runat="server" TextMode="Password"></asp:TextBox>
                            </div>

                        </fieldset>

                        <asp:Button ID="registerbtn" Text="KAYIT OL" CssClass="btn btn-primary" OnClick="registerbtn_click" runat="server" />

                        <style>
                            .register {
                                margin-bottom: 0px;
                            }
                        </style>

                    </div>
                </div>
            </div>
        </section>
    

    <script>
        const switchers = [...document.querySelectorAll('.switcher')]

        switchers.forEach(item => {
            item.addEventListener('click', function () {
                switchers.forEach(item => item.parentElement.classList.remove('is-active'))
                this.parentElement.classList.add('is-active')
            })
        })

    </script>

</asp:Content>
