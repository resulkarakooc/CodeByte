﻿<%@ Page Title="" Language="C#" MasterPageFile="DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlogWeb.mediumish_html.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="assets/css/drodown.css" />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Begin Site Title
 ================================================== -->
    <div class="container">
        <div class="mainheading">
            <h1 class="sitetitle">CodeByte</h1>
            <p class="lead" id="handwritten-text"></p>
        </div>
        <!-- End Site Title
     ================================================== -->
        <section class="featured-posts">
            <div class="section-title">
                <div class="titler">
                    <h2>Öne Çıkanlar</h2>
                    <div class="sec-center">
                        <input class="dropdown" type="checkbox" id="dropdown" name="dropdown" />
                        <label class="for-dropdown" for="dropdown">
                            Kategoriler
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1" />
                            </svg>
                        </label>
                        <div class="section-dropdown">
                            <a class="linkss" href="Default.aspx?dp=1">Siber Güvenlik
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg>
                            </a>
                            <input class="dropdown-sub" type="checkbox" id="dropdown-sub" name="dropdown-sub" />
                            <label class="for-dropdown-sub" for="dropdown-sub">
                                Web Geliştirme
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1" />
                                </svg></label>
                            <div class="section-dropdown-sub">
                                <a class="linkss" href="Default.aspx?dp=2">Back-End 
                                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                         <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                     </svg>
                                </a>
                                <a class="linkss" href="Default.aspx?dp=8">Front-End 
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                    </svg></a>
                            </div>
                            <a class="linkss" href="Default.aspx?dp=3">Oyun Geliştirme
                                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                     <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                 </svg>
                            </a>
                            <a class="linkss" href="Default.aspx?dp=4">Git ve Github 
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                              </svg></a>
                            <a class="linkss" href="Default.aspx?dp=5">Veri Tabanı ve Sql
                                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                     <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                 </svg>
                            </a>
                            <a class="linkss" href="Default.aspx?dp=6">Görsel Programlama 
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg>
                            </a>
                            <a class="linkss" href="Default.aspx?dp=7">Mobil Programlama 
                                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                      <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                  </svg>
                            </a>
                            <a class="linkss" href="Default.aspx?dp=9">Algoritma 
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8" />
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row listrecent listrelated">
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <!-- begin post -->
                                               <div class="col-md-4">
                            <div class="card">
                                <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                    <asp:Image CssClass="img-fluid" ID="Image2" ImageUrl='<%# Eval("blogImg") %>' runat="server" /></a>
                                <div class="card-block">
                                    <h2 class="card-title">
                                        <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                            <asp:Label ID="Label2" CssClass="card-text" runat="server" Text='<%# Eval("blogTitle") %>'></asp:Label></a>
                                    </h2>
                                    <h4 class="card-text"><%#Eval("aciklama") %></h4>
                                    <div class="metafooter">
                                        <div class="wrapfooter">
                                            <span class="meta-footer-thumb">
                                                <a href="author.html">
                                                    <img class="author-thumb"
                                                        src='<%#Eval("writerImg") %>'
                                                        alt="Sal">
                                                </a>
                                                &nbsp;</span><span class="author-meta"><span class="post-name"><a href="author.html"><%#Eval("writerName") %></a></span><br />
                                                    <span class="post-date"><%#Eval("bdate") %></span><span class="dot"></span><span class="post-read">6 min read</span>
                                                </span>
                                            <span class="post-read-more">
                                                <a href="medpost.aspx?id=<%#Eval("blogID") %>" title="Read Story">
                                                    <svg class="svgIcon-use" width="25" height="25" viewBox="0 0 25 25">
                                                        <path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z"
                                                            fill-rule="evenodd">
                                                        </path>
                                                    </svg>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
            <style>
                .img-resul {
                    width: 300px;
                    height: 200px;
                    overflow: hidden;
                    position: relative;
                }

                .img-rsl {
                    position: absolute;
                    top: 0;
                    height: 100%;
                    object-fit: cover;
                }
            </style>
        </section>
        <!--All Stories *********************************************************-->
        <section class="recent-posts">
            <div class="section-title">
                <h2><span>Son Makaleler</span></h2>
            </div>

            <div class="card-columns listrecent" style="margin-top: 10px;">

                <!-- begin post -->
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <div class="card">
                            <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                <asp:Image CssClass="img-fluid" ID="Image2" ImageUrl='<%# Eval("blogImg") %>' runat="server" /></a>
                            <div class="card-block">
                                <h2 class="card-title">
                                    <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                        <asp:Label ID="Label2" CssClass="card-text" runat="server" Text='<%# Eval("blogTitle") %>'></asp:Label></a>
                                </h2>
                                <h4 class="card-text"><%#Eval("aciklama") %>
                                    <!--içerik-->
                                </h4>
                                <div class="metafooter">
                                    <div class="wrapfooter">
                                        <span class="meta-footer-thumb">
                                            <a href="Author.aspx?id=<%#Eval("writerID") %>">
                                                <img class="author-thumb"
                                                    src='<%#Eval("writerImg") %>'
                                                    alt="Sal">
                                            </a>
                                            &nbsp;</span><span class="author-meta"><span class="post-name"><a href="Author.aspx?id=<%#Eval("writerID") %>"><%#Eval("writerName") %></a></span><br />
                                                <span class="post-date"><%#Eval("bdate") %></span><span class="dot"></span><span class="post-read">6 min read</span>
                                            </span>
                                        <span class="post-read-more">
                                            <a href="medpost.aspx?id=<%#Eval("blogID") %>" title="Read Story">
                                                <svg class="svgIcon-use" width="25" height="25" viewBox="0 0 25 25">
                                                    <path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z"
                                                        fill-rule="evenodd">
                                                    </path>
                                                </svg>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </ItemTemplate>

                </asp:DataList>
            </div>

            <!-- end post -->
        </section>
        <!-- Begin Footer
================================================== -->


        <script>
            var text = "Eğer fikrinizi yazıya dökemiyorsanız, onu kodlayamazsınız. Peter Halpern";
            var index = 0;
            var speed = 100; // Yazma hızı (milisaniye cinsinden)

            function writeText() {
                var div = document.getElementById('handwritten-text');
                div.innerHTML += text.charAt(index);
                index++;
                if (index < text.length) {
                    setTimeout(writeText, speed);
                }
            }

            // Sayfa yüklendiğinde yazı başlar
            window.onload = writeText;
        </script>

        <!-- End Footer
================================================== -->

    </div>

</asp:Content>
