<%@ Page Title="" Language="C#" MasterPageFile="DefaultLayout.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="BlogWeb.mediumish_html.LoginPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="assets/css/LoginCss.css" />

    <script>
        function checkTextBoxes() {
            var textBox1Value = document.getElementById("<%= tbname.ClientID %>").value;
            var textBox2Value = document.getElementById("<%= tbmail.ClientID %>").value;
            var buton = document.getElementById("<%# registerbtn.ClientID%>")

            if (textBox1Value.trim() === "" || textBox2Value.trim() === "") {
                alert("Lütfen tüm alanları doldurun.");
                return false;
            }
            else {
                
            }
        }

    </script>

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

                            <asp:Label AssociatedControlID="tbmaill" ID="Label3" Style="margin-bottom: 0px;" runat="server" CssClass="" Text="E-mail:"></asp:Label>
                            <asp:TextBox ID="tbmaill" AutoCompleteType="Email" TextMode="Email" placeholder="name@example.com" CssClass="form-group form-control login-email" runat="server"></asp:TextBox>


                        </div>
                        <div class="input-block">
                            <asp:Label AssociatedControlID="tbpass" ID="Label2" runat="server" CssClass="" Text="Şifre:"></asp:Label>
                            <asp:TextBox ID="tbpass" CssClass="form-group form-control login-password" Style="margin-top: 0px;" TextMode="Password" runat="server"></asp:TextBox>



                        </div>
                    </fieldset>
                    <asp:Button ID="Button1" CssClass="btn btn-primary form-control" runat="server" OnClick="ButtonLogin_Click" OnClientClick="showAlertDialog();" Text="Giris" />
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
                            <asp:Label AssociatedControlID="tbname" ID="Label1" Style="margin-bottom: 0px;" runat="server" CssClass="" Text="Kullanıcı Adı:"></asp:Label>
                            <asp:TextBox ID="tbname" AutoCompleteType="FirstName" TextMode="SingleLine" placeholder="name" CssClass="form-group form-control sign-email" runat="server"></asp:TextBox>
                           
                        </div>

                        <div class="input-block">
                            <asp:Label AssociatedControlID="tbmail" ID="Label4" Style="margin-bottom: 0px;" runat="server" CssClass="" Text="E-mail:"></asp:Label>
                            <asp:TextBox ID="tbmail" AutoCompleteType="Email" TextMode="Email" placeholder="name@example.com" CssClass="form-group form-control signup-email" runat="server"></asp:TextBox>

                        </div>

                        <div class="input-block">
                            <asp:Label AssociatedControlID="tbbpass" ID="Label5" Style="margin-bottom: 0px;" runat="server" CssClass="" Text="Password"></asp:Label>
                            <asp:TextBox ID="tbbpass"  TextMode="Password"  CssClass="form-group form-control signup-password" runat="server"></asp:TextBox>

                        </div>

                        <div class="input-block">
                            <asp:Label AssociatedControlID="tbbpassconfirm" ID="Label6" Style="margin-bottom: 0px;" runat="server" CssClass="" Text="Password Confirm"></asp:Label>
                            <asp:TextBox ID="tbbpassconfirm" AutoCompleteType="Email" TextMode="Password"  CssClass="form-group form-control login-email" runat="server"></asp:TextBox>

                        </div>

                    </fieldset>

                    <asp:Button ID="registerbtn" Text="KAYIT OL" CssClass="btn btn-primary" OnClick="registerbtn_click" OnClientClick="checkTextBoxes();" runat="server" />

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
