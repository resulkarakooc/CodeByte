<%@ Page Title="" Language="C#" MasterPageFile="~/mediumish-html/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BlogWeb.mediumish_html.LoginPage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="assets/css/LoginCss.css"/>

</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="forms-section">
        <h1 class="section-title">Giriş Yap Veya Kaydol</h1>
        <div class="forms">
            <div class="form-wrapper is-active">
                <button type="button" class="switcher switcher-login">
                    Login
        <span class="underline"></span>
                </button>
                <form class="form form-login">
                    <fieldset>
                        <legend>Please, enter your email and password for login.</legend>
                        <div class="input-block">
                            <label for="login-email">E-mail</label>
                            <input id="login-email" type="email" required>
                        </div>
                        <div class="input-block">
                            <label for="login-password">Password</label>
                            <input id="login-password" type="password" required>
                        </div>
                    </fieldset>
                    <button type="submit" class="btn-login">Login</button>
                </form>
            </div>
            <div class="form-wrapper">
                <button type="button" class="switcher switcher-signup">
                    Sign Up
        <span class="underline"></span>
                </button>
                <form class="form form-signup">
                    <fieldset>
                        <legend>Please, enter your email, password and password confirmation for sign up.</legend>
                        <div class="input-block">
                            <label for="signup-email">E-mail</label>
                            <input id="signup-email" type="email" required>
                        </div>
                        <div class="input-block">
                            <label for="signup-password">Password</label>
                            <input id="signup-password" type="password" required>
                        </div>
                        <div class="input-block">
                            <label for="signup-password-confirm">Confirm password</label>
                            <input id="signup-password-confirm" type="password" required>
                        </div>
                    </fieldset>
                    <button type="submit" class="btn-signup">Continue</button>
                </form>
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
