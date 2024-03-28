<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="BlogWeb.search" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="mainheading">
            <h1 class="sitetitle">CodeByte</h1>
            <p class="lead">
                Bootstrap theme, medium style, simply perfect for bloggers
            </p>
        </div>
        <section class="featured-posts">
            <div class="section-title">
                <div class="titler">
                    <h2>
                        <asp:Label ID="wanted" runat="server" Text=""></asp:Label></h2>
                </div>
            </div>
            <div class="card-columns listfeaturedtag colonlar">


                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <!-- begin post -->
                        <div class="cardd">
                            <div class="row">
                                <div class="col-md-5 wrapthumbnail img-resul">
                                    <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                        <asp:Image CssClass="img-rsl thumbnail" ID="Image2" ImageUrl='<%# Eval("blogImg") %>' runat="server" /></a>
                                </div>
                                <div class="col-md-7" style="bottom: 1px ">
                                    <div class="card-block">
                                        <h2 class="card-title">
                                            <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("blogTitle") %>'></asp:Label></a></h2>
                                        <h4 class="card-text">
                                            <!-- buraya içerik gelicek-->
                                            <%#Eval("aciklama") %>
                                        </h4>
                                        <div class="metafooter">
                                            <div class="wrapfooter">
                                                <span class="meta-footer-thumb">
                                                    <a href="Author.aspx?id=<%#Eval("writerID") %>">
                                                        <img class="author-thumb"
                                                            src='<%#Eval("writerImg") %>'
                                                            alt="Sal">
                                                    </a>
                                                </span>
                                                <span class="author-meta">
                                                    <span class="post-name"><a href="Author.aspx?id=<%#Eval("writerID") %>">
                                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("writerName") %>'></asp:Label></a></span><br />
                                                    <span class="post-date"><%#Eval("bdate") %></span><span class="dot"></span><span class="post-read"></span>
                                                </span>
                                                <span class="post-read-more">
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
                        </div>
                    </ItemTemplate>
                </asp:ListView>

            </div>

            <style>
                .colonlar {
                    display: flex;
                    flex-wrap: wrap;
                }

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
                    max-width: 100%;
                }

                .cardd {
                    flex-grow: 1;
                    flex-basis: 200;
                    margin-top:20px;
                }
            </style>



        </section>







    </div>
</asp:Content>
