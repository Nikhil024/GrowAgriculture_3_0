<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        Login &#45; Material Kit PRO by Creative Tim
    </title>
    <jsp:include page="headerCSS.jsp"/>
</head>

<body class="login-page ">
    <nav class="navbar navbar-color-on-scroll navbar-transparent    fixed-top  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">
        <div class="container">
            <div class="navbar-translate">
                <a class="navbar-brand" href="../presentation.html">Material Kit PRO </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <i class="material-icons">apps</i> Components
                        </a>
                        <div class="dropdown-menu dropdown-with-icons">
                            <a href="../index.html" class="dropdown-item">
                                <i class="material-icons">layers</i> All Components
                            </a>
                            <a href="../docs/2.0/getting-started/introduction.html" class="dropdown-item">
                                <i class="material-icons">content_paste</i> Documentation
                            </a>
                        </div>
                    </li>
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <i class="material-icons">view_day</i> Sections
                        </a>
                        <div class="dropdown-menu dropdown-with-icons">
                            <a href="../sections.html#headers" class="dropdown-item">
                                <i class="material-icons">dns</i> Headers
                            </a>
                            <a href="../sections.html#features" class="dropdown-item">
                                <i class="material-icons">build</i> Features
                            </a>
                            <a href="../sections.html#blogs" class="dropdown-item">
                                <i class="material-icons">list</i> Blogs
                            </a>
                            <a href="../sections.html#teams" class="dropdown-item">
                                <i class="material-icons">people</i> Teams
                            </a>
                            <a href="../sections.html#projects" class="dropdown-item">
                                <i class="material-icons">assignment</i> Projects
                            </a>
                            <a href="../sections.html#pricing" class="dropdown-item">
                                <i class="material-icons">monetization_on</i> Pricing
                            </a>
                            <a href="../sections.html#testimonials" class="dropdown-item">
                                <i class="material-icons">chat</i> Testimonials
                            </a>
                            <a href="../sections.html#contactus" class="dropdown-item">
                                <i class="material-icons">call</i> Contacts
                            </a>
                        </div>
                    </li>
                    <li class="dropdown nav-item">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <i class="material-icons">view_carousel</i> Examples
                        </a>
                        <div class="dropdown-menu dropdown-with-icons">
                            <a href="../examples/about-us.html" class="dropdown-item">
                                <i class="material-icons">account_balance</i> About Us
                            </a>
                            <a href="../examples/blog-post.html" class="dropdown-item">
                                <i class="material-icons">art_track</i> Blog Post
                            </a>
                            <a href="../examples/blog-posts.html" class="dropdown-item">
                                <i class="material-icons">view_quilt</i> Blog Posts
                            </a>
                            <a href="../examples/contact-us.html" class="dropdown-item">
                                <i class="material-icons">location_on</i> Contact Us
                            </a>
                            <a href="../examples/landing-page.html" class="dropdown-item">
                                <i class="material-icons">view_day</i> Landing Page
                            </a>
                            <a href="../examples/login-page.html" class="dropdown-item">
                                <i class="material-icons">fingerprint</i> Login Page
                            </a>
                            <a href="../examples/pricing.html" class="dropdown-item">
                                <i class="material-icons">attach_money</i> Pricing Page
                            </a>
                            <a href="../examples/ecommerce.html" class="dropdown-item">
                                <i class="material-icons">store</i> Ecommerce Page
                            </a>
                            <a href="../examples/product-page.html" class="dropdown-item">
                                <i class="material-icons">shopping_cart</i> Product Page
                            </a>
                            <a href="../examples/profile-page.html" class="dropdown-item">
                                <i class="material-icons">account_circle</i> Profile Page
                            </a>
                            <a href="../examples/signup-page.html" class="dropdown-item">
                                <i class="material-icons">person_add</i> Signup Page
                            </a>
                        </div>
                    </li>
                    <li class="button-container nav-item">
                        <a href="http://www.creative-tim.com/buy/material-kit-pro?ref=presentation" target="_blank" class="btn  btn-rose   btn-round btn-block">
                            <i class="material-icons">shopping_cart</i> Buy Now
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="page-header header-filter" style="background-image: url(&apos;../assets/img/bg7.jpg&apos;); background-size: cover; background-position: top center;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 ml-auto mr-auto">
                    <div class="card card-signup">
                        <form class="form" method="" action="">
                            <div class="card-header card-header-primary text-center">
                                <h4 class="card-title">Log in</h4>
                                <div class="social-line">
                                    <a href="#pablo" class="btn btn-just-icon btn-link">
                                        <i class="fa fa-facebook-square"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-link">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#pablo" class="btn btn-just-icon btn-link">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                            <p class="description text-center">Or Be Classical</p>
                            <div class="card-body">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">face</i>
                                    </span>
                                    <input type="text" class="form-control" placeholder="First Name...">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">email</i>
                                    </span>
                                    <input type="email" class="form-control" placeholder="Email...">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">lock_outline</i>
                                    </span>
                                    <input type="password" class="form-control" placeholder="Password...">
                                </div>
                                <!-- If you want to add a checkbox to this form, uncomment this code

								<div class="checkbox">
									<label>
										<input type="checkbox" name="optionsCheckboxes" checked>
										Subscribe to newsletter
									</label>
								</div> -->
                            </div>
                            <div class="footer text-center">
                                <a href="#pablo" class="btn btn-primary btn-link btn-wd btn-lg">Get Started</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <nav class="float-left">
                    <ul>
                        <li>
                            <a href="http://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://presentation.creative-tim.com">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                                Blog
                            </a>
                        </li>
                        <li>
                            <a href="http://www.creative-tim.com/license">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright float-right">
                    &#xA9;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, made with <i class="fa fa-heart heart"></i> by
                    <a href="http://www.creative-tim.com" target="_blank">Creative Tim</a>
                </div>
            </div>
        </footer>
    </div>
    <jsp:include page="bodyJS.jsp"/>
    <noscript>
        <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=111649226022273&ev=PageView&noscript=1" />
    </noscript>
</body>

</html>