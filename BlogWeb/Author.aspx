<%@ Page Title="" Language="C#" MasterPageFile="/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="BlogWeb.mediumish_html.Author" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <!-- Begin Top Author Page
================================================== -->
            <div class="container">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8 col-md-offset-2">
                        <div class="mainheading">
                            <div class="row post-top-meta authorpage">
                                <div class="col-md-10 col-xs-12">
                                    <h1><%#Eval("writerName") %></h1>


                                    <span class="author-description"><%#Eval("writerAbout") %></span>


                                    <div class="sociallinks"><a target="_blank" href="https://www.facebook.com/wowthemesnet/"><i class="fa fa-facebook"></i></a><span class="dot"></span><a target="_blank" href="https://plus.google.com/s/wowthemesnet/top"><i class="fa fa-google-plus"></i></a></div>
                                    <a target="_blank" href="https://twitter.com/wowthemesnet" class="btn follow">Follow</a>
                                </div>
                                <div class="col-md-2 col-xs-12">
                                    <img class="author-thumb" src='<%#Eval("writerImg") %>' alt="Sal">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Author Meta
================================================== -->
        </ItemTemplate>
    </asp:ListView>

    <!-------------------------------------------------
                      Writer posts
    ------------------------------------------------------>
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
                                                    <img class="author-thumb"src='<%#Eval("writerImg") %>' alt="Sal"></a>
                                            </span>
                                            <span class="author-meta">
                                                <span class="post-name"><a href="Author.aspx?id=<%#Eval("writerID") %>"><%#Eval("writerName") %></a></span><br />
                                                <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                            </span>
                                            <span class="post-read-more"><a href="post.html" title="Read Story">
                                                <svg class="svgIcon-use" width="25" height="25" viewBox="0 0 25 25">
                                                    <path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
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

    <!-- Begin Twitter Timeline
================================================== -->
    <div class="container margtop3rem">
        
        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
    <!-- End Twitter Timeline
================================================== -->
    <!-- Begin Footer
================================================== -->
    <div class="container">
        <div class="footer">
            <p class="pull-left">
                Copyright &copy; 2017 Your Website Name
            </p>
            <p class="pull-right">
                Mediumish Theme by <a target="_blank" href="https://www.wowthemes.net">WowThemes.net</a>
            </p>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- End Footer
================================================== -->





</asp:Content>
