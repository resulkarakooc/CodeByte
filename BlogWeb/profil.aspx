<%@ Page Title="" Language="C#" MasterPageFile="~/mediumish-html/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="BlogWeb.mediumish_html.profil" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="../css/profilStyle.css" />



</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="main-body">
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>


                    <div class="row gutters-sm">
                        <div class="col-md-4 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src='<%#Eval("writerImg") %>' alt="Admin" class="rounded-circle" width="150">
                                        <div class="mt-3">
                                            <h4><%#Eval("writerName") %></h4>
                                            <p class="text-secondary mb-1"><%#Eval("writerUnvan") %></p>
                                            <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mt-3">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline">
                                                <circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                                        <span class="text-secondary tbm">
                                            <asp:TextBox CssClass="form-control-static" ID="TextBox10" runat="server" Text='Link Github' Enabled="false"></asp:TextBox>

                                        </span>
                                        <!-- ***** -->
                                    </li>

                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline">
                                                <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                                        <span class="text-secondary tbm">
                                            <asp:TextBox CssClass="form-control-static" ID="TextBox6" runat="server" Text="boodeyyy" Enabled="false"></asp:TextBox>

                                        </span>
                                        <!-- ***** -->
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info">
                                                <path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                                        <span class="text-secondary tnm">
                                            <asp:TextBox CssClass="form-control-static" ID="TextBox7" runat="server" Text="boodeyyy" Enabled="false"></asp:TextBox>
                                            <!-- ***** -->
                                        </span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger">
                                                <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                                        <span class="text-secondary tbm">
                                            <asp:TextBox CssClass="form-control-static" ID="TextBox8" runat="server" Text="boodeyyy" Enabled="false"></asp:TextBox>
                                            <!-- ***** -->
                                        </span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0" style="justify-content: space-around">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary">
                                                <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                                        <span class="text-secondary tbm">
                                            <asp:TextBox CssClass="form-control-static" ID="TextBox9" runat="server" Text="boodeyyy" Enabled="false"></asp:TextBox>
                                            <!-- ***** -->
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Full Name</h6>
                                        </div>
                                        <asp:TextBox CssClass="col-sm-9 text-secondary form-control tbmm" ID="TextBox1" runat="server" Text='<%#Eval("writerName") %>' Enabled="false"></asp:TextBox>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <asp:TextBox CssClass="col-sm-9 text-secondary form-control tbmm" ID="TextBox2" runat="server" Text='<%#Eval("writerMail") %>' Enabled="false"></asp:TextBox>
                                        <!-- ***** -->
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Unvan</h6>
                                        </div>
                                        <asp:TextBox CssClass="col-sm-9 text-secondary form-control tbmm" ID="TextBox3" runat="server" Text='<%#Eval("writerUnvan") %>' Enabled="false"></asp:TextBox>
                                        <!-- ***** -->
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Hakkında</h6>
                                        </div>
                                        <asp:TextBox CssClass="col-sm-9 text-secondary form-control tbmm" ID="TextBox4" runat="server" Text='<%#Eval("writerAbout") %>' Enabled="false"></asp:TextBox>
                                        <!-- ***** -->
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Yeteneklerin</h6>
                                        </div>
                                        <asp:TextBox CssClass="col-sm-9 text-secondary form-control tbmm" ID="TextBox5" runat="server" Text='<%#Eval("writerSkill") %>' Enabled="false"></asp:TextBox>
                                        <!-- ***** -->
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Profil Resim Linki</h6>
                                        </div>
                                        <asp:TextBox CssClass="col-sm-9 text-secondary form-control tbmm" ID="TextBox11" runat="server" Text='<%#Eval("writerImg") %>' Enabled="false"></asp:TextBox>
                                        <!-- ***** -->
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div><a href="editprofile.aspx" runat="server" class="btn btn-warning">Düzenle</a></div>

                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>


                    </div>

                </ItemTemplate>
            </asp:ListView>

            <!--   poster    -->

            <asp:ListView ID="ListView2" runat="server">
                <ItemTemplate>

                    <div class="graybg authorpage">
                        <div class="container">
                            <div class="listrecent listrelated">

                                <!-- begin post -->
                                <div class="authorpostbox">
                                    <div class="card">
                                        <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                            <asp:Image CssClass="img-fluid img-thumb" ID="Image2" ImageUrl='<%# Eval("blogImg") %>' runat="server" /></a>
                                        <div class="card-block">
                                            <h2 class="card-title"><a href="medpost.aspx?id=<%#Eval("blogID") %>"><%#Eval("blogTitle") %></a></h2>
                                            <h4 class="card-text">
                                                <!--içerik gelicek-->
                                            </h4>
                                            <div class="metafooter">
                                                <div class="wrapfooter">
                                                    <span class="meta-footer-thumb">
                                                        <a href="author.html">
                                                            <img class="author-thumb" src='<%#Eval("writerImg") %>' alt="Sal"></a>
                                                    </span>
                                                    <span class="author-meta">
                                                        <span class="post-name"><a href="Author.aspx?id=<%#Eval("writerID") %>"><%#Eval("writerName") %></a></span><br />
                                                        <span class="post-date"><%#Eval("bDate") %></span><span class="dot"></span><span class="post-read"><%#Eval("bConfirmationText") %></span>
                                                    </span>
                                                    <span class="post-read-more"><a href='<%#Eval("bdate") %>' title="Read Story">
                                                        <svg class="svgIcon-use" width="25" height="25" viewBox="0 0 25 25">
                                                            <path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                                     <a style="width:10%; margin:10px;" class="btn btn-danger" href="blogSil.aspx?id=<%#Eval("blogID") %>"">Sil</a>
                                                    
                                                </div>

                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end post -->
                            </div>
                        </div>
                    </div>



                </ItemTemplate>

            </asp:ListView>

        </div>

    </div>


    <!-- Java script codess developer is resul-->


</asp:Content>
