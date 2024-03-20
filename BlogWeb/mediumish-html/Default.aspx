<%@ Page Title="" Language="C#" MasterPageFile="~/mediumish-html/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlogWeb.mediumish_html.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Begin Site Title
 ================================================== -->
    <div class="container">
        <div class="mainheading">
            <h1 class="sitetitle">Mediumish</h1>
            <p class="lead">
                Bootstrap theme, medium style, simply perfect for bloggers
            </p>
        </div>
        <!-- End Site Title
     ================================================== -->
        <section class="featured-posts">
            <div class="section-title">
                <h2><span>Featured</span></h2>
            </div>
            <div class="card-columns listfeaturedtag">


                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <!-- begin post -->
                        <div class="card">
                            <div class="row">
                                <div class="col-md-5 wrapthumbnail img-resul">
                                    <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                        <asp:Image CssClass="img-rsl thumbnail" ID="Image2" ImageUrl='<%# Eval("blogImg") %>' runat="server" /></a>
                                </div>
                                <div class="col-md-7">
                                    <div class="card-block">
                                        <h2 class="card-title">
                                            <a href="medpost.aspx?id=<%#Eval("blogID") %>">
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("blogTitle") %>'></asp:Label></a></h2>
                                        <h4 class="card-text">
                                            <!-- buraya içerik gelicek-->
                                        </h4>
                                        <div class="metafooter">
                                            <div class="wrapfooter">
                                                <span class="meta-footer-thumb">
                                                    <a href="Author.aspx?id=<%#Eval("writerID") %>">
                                                        <img class="author-thumb"
                                                            src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x"
                                                            alt="Sal">
                                                    </a>
                                                </span>
                                                <span class="author-meta">
                                                    <span class="post-name"><a href="Author.aspx?id=<%#Eval("writerID") %>">
                                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("writerName") %>'></asp:Label></a></span><br />
                                                    <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
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
                        </div>
                    </ItemTemplate>
                </asp:ListView>



            </div>
            <style>
                .img-resul {
                    width: 300px; /* Örnek olarak bir genişlik belirleyin, istediğiniz genişliği burada ayarlayabilirsiniz */
                    height: 200px; /* Örnek olarak bir yükseklik belirleyin, istediğiniz yüksekliği burada ayarlayabilirsiniz */
                    overflow: hidden; /* Kapsayıcının dışına taşan içeriğin gizlenmesi için */
                    position: relative;
                }

                .img-rsl {
                    position: absolute; /* Mutlak pozisyon kullanarak görüntüyü yerleştirin */
                    top: 0; /* Görüntüyü kapsayıcının üstüne yerleştirin */
                    left: 25px; /* Görüntüyü kapsayıcının sağ köşesine yerleştirin */
                    height: 100%; /* Görüntünün yüksekliğini %100 olarak ayarlayın */
                    object-fit: cover;
                    /*background-position: top left;*/
                }
            </style>
        </section>
        <!--All Stories *********************************************************-->
        <section class="recent-posts">
            <div class="section-title">
                <h2><span>All Stories</span></h2>
            </div>

            <div class="card-columns listrecent">

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
                                <h4 class="card-text">
                                    <!--içerik-->
                                </h4>
                                <div class="metafooter">
                                    <div class="wrapfooter">
                                        <span class="meta-footer-thumb">
                                            <a href="Author.aspx?id=<%#Eval("writerID") %>">
                                                <img class="author-thumb"
                                                    src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x"
                                                    alt="Sal">
                                            </a>
                                            &nbsp;</span><span class="author-meta"><span class="post-name"><a href="Author.aspx?id=<%#Eval("writerID") %>"><%#Eval("writerName") %></a></span><br />
                                                <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
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
        <div class="footer">
            <p class="pull-left">
                Copyright &copy; 2024 Resul Karakoç
            </p>
            <p class="pull-right">
                Mediumish developer by <a target="_blank" href="#">Resul Karakoç</a>
            </p>
            <div class="clearfix">
            </div>
        </div>
        <!-- End Footer
================================================== -->

    </div>

</asp:Content>

