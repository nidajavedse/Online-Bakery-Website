<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Sprinkles & Swirls</title>
    <meta name="keywords" content="Bakery, online bakery, pastries, cakes, desserts">
    <meta name="description" content="Sprinkles & Swirls is an online bakery offering a wide range of delicious cakes, cupcakes, brownies and desserts. Order online and satisfy your sweet tooth!">
    <meta name="author" content="Nida Javed, Hira Shahzad">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

    <style>
        .center {
            text-align: center;
        }
    </style>

</head>
<body>
    <!-- header section start -->
    <div class="header_section">
        <div class="container-fluid">
            <nav id="navigationBar" class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="logo"><a href="index"><img src="images/logo.png"></a></div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#menu">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">Contact</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <h1 class="call_text">Call Us : +01 1234567890</h1>
                    </form>
                    <div class="search_icon">
                        <ul>
                            <li><button class="btnLogin-popup" style="display: ${none};">Login</button></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- header section end -->
    <!-- login section Start -->
    <div id="popup" class="mypopup">
        <div class="wrapper">
            <span class="icon-close"><ion-icon name="close"></ion-icon></span>
            <div class="form-box login">
                <h2>Login</h2>
                <form action="loginUser" method="post">
                <p style="color: #9c0746;">${message}</p>
                    <div class="input_box">
                        <span class="icon">
                            <ion-icon name="mail"></ion-icon>
                        </span>
                        <input type="email" id= "email" name = "email" required>
                        <label>Email</label>
                    </div>
                    <div class="input_box">
                        <span class="icon">
                            <ion-icon name="lock-closed"></ion-icon>
                        </span>
                        <input type="password" id= "password" name = "password" required>
                        <label>Password</label>
                    </div>
                    <div class="remember-forgot">
                        <label>
                            <input type="checkbox">
                            Remember me
                        </label>
                        <a href="#">Forgot Password?</a>
                    </div>
                    <button type="submit" class="btnlog">Login</button>
                    <div class="login-register">
                        <p>Don't have an account? <a href="#" class="register-link"> Register</a></p>
                    </div>
                </form>
                
            </div>


            <div class="form-box register">
                <h2>Registration</h2>
                <form action="saveUser" method="post">
                <p style="color: #9c0746;">${registerMessage}</p>
                    <div class="input_box">
                        <span class="icon">
                            <ion-icon name="person" ></ion-icon>
                        </span>
                        <input type="text" id= "userName" name = "userName"  title="User name is already present" required>
                        <label>Username</label>
                    </div>
                    <div class="input_box">
                        <span class="icon">
                            <ion-icon name="mail"></ion-icon>
                        </span>
                        <input type="email" id= "email" name = "email" required>
                        <label>Email</label>
                    </div>
                    <div class="input_box">
                        <span class="icon">
                            <ion-icon name="lock-closed"></ion-icon>
                        </span>
                        <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                        <label>Password</label>
                    </div>
                    <div class="remember-forgot">
                        <label>
                            <input type="checkbox">
                            I agree to the terms & conditions
                        </label>
                    </div>
                    <button type="submit" class="btnlog">Register</button>
                    <div class="login-register">
                        <p>
                            Already have an account?
                            <a href="#" class="login-link"> Login</a>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- login section end -->
    <!-- banner section start -->
    <div class="banner_section layout_padding">
        <div class="container">
            <div id="costum_slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <h1 class="furniture_text">WELCOME</h1>
                        <p class="there_text">Discover the Sweet World of Sprinkles and Swirls</p>
                        <div class="contact_bt_main">
                            <div class="contact_bt"><a href="shop">Order Now</a></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <h1 class="furniture_text">WELCOME</h1>
                        <p class="there_text">Satisfy Your Sweet Cravings at Sprinkles and Swirls</p>
                        <div class="contact_bt_main">
                            <div class="contact_bt"><a href="shop">Order Now</a></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <h1 class="furniture_text">WELCOME</h1>
                        <p class="there_text">Indulge in Delightful Treats at Sprinkles and Swirls</p>
                        <div class="contact_bt_main">
                            <div class="contact_bt"><a href="shop">Order Now</a></div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#costum_slider" role="button" data-slide="prev">
                    <i class=""><img src="images/left-arrow.png"></i>
                </a>
                <a class="carousel-control-next" href="#costum_slider" role="button" data-slide="next">
                    <i class=""><img src="images/right-arrow.png"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- banner section end -->
    <!-- menu section start -->
    <div id="menu" class="services_section layout_padding">
        <div class="container">
            <h1 class="services_taital">MENU</h1>
            <p class="many_taital">Our Menu offers a delightful assortment of baked goods to satisfy your cravings</p>
            <div class="services_section2 layout_padding">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="icon_1"><img src="images/cake1.png"></div>
                        <h2 class="furnitures_text">Cakes</h2>
                        <p class="dummy_text">Divine cake collection, crafted to perfection for your sweetest moments</p>
                        <div class="read_bt_main">
                            <div class="read_bt"><a href="shop">Order Now</a></div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="icon_1"><img src="images/cupcake1.png"></div>
                        <h2 class="furnitures_text">Cupcakes</h2>
                        <p class="dummy_text">Cupcakes, meticulously crafted with love to fulfill your sweetest desires</p>
                        <div class="read_bt_main">
                            <div class="read_bt"><a href="shop">Order Now</a></div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="icon_1"><img src="images/brownie1.png"></div>
                        <h2 class="furnitures_text">Brownies</h2>
                        <p class="dummy_text">Experience pure chocolate bliss with our delectable assortment of brownies</p>
                        <div class="read_bt_main">
                            <div class="read_bt"><a href="shop">Order Now</a></div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="icon_1"><img src="images/dessert1.png"></div>
                        <h2 class="furnitures_text">Deserts</h2>
                        <p class="dummy_text">Sweetness of our irresistible desserts that will enchant your taste buds</p>
                        <div class="read_bt_main">
                            <div class="read_bt"><a href="shop">Order Now</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- menu section end -->
    <!-- about section start -->
    <div id="about" class="about_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="about_text">About Us</h1>
                    <p style="text-align: justify;" class="lorem_text">Sprinkles & Swirls is more than just an online bakery, we believe in the power of creating unforgettable experiences through delectable treats. Our mission is to bring joy and delight to our customers' lives by offering a delightful assortment of handcrafted cakes, cupcakes, brownies and desserts. Each item is meticulously prepared with the finest ingredients, attention to detail, and a dash of creativity.</p>
                </div>
                <div class="col-md-6">
                    <div class="image_1"><img src="images/img-1.png"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- about section end -->
    <!-- best seller section start -->
    <div class="projects_section layout_padding">
        <div class="container">
            <h1 class="our_text">Best Sellers</h1>
            <p class="ipsum_text">Experience the sweet sensation of our best-selling treats, crafted with passion and adored by all.</p>
            <div id="main_slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="projects_section2">
                            <div class="container_main2">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-4.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Caramel Chocolate Cake</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-15.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Chocolate Fudge Cake</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-10.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Black Forest Trifle</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="projects_section2">
                            <div class="container_main1">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-6.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Raspberry Chocolate Brownies</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-11.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Raspberry Mousse Cake</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-12.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Red Velvet Cupcake</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="projects_section2">
                            <div class="container_main1">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-13.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Triple Chocolate Brownies</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-14.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Chocolate loaf Cake</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="container_main1">
                                            <img src="images/img-5.png" alt="Avatar" class="image" style="width:100%">
                                            <h1 class="modern_text">Choco Creme Cupcake</h1>
                                            <div class="middle">
                                                <div class="text"><a style="color:#9c0746;" href="shop">Order Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- best seller section end -->
     <!-- contact section start -->
    <div style="text-align: center;">
        <div class="center">
            <div id="contact" class="contact_section layout_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h1 class="contact_text">CONTACT US</h1>
                            <div class="mail_sectin">
                               <form class="center" action="saveFeedback" method="post">
                                    <input type="text" class="email-bt" placeholder="Name" name="name" required pattern="[A-Za-z\s]{1,}" title="Enter alphabets only">
                                    <input type="email" class="email-bt" placeholder="Email" name="email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
                                    <input type="tel" class="email-bt" placeholder="Phone Number" name="phoneNo" required pattern="\+92\d{10}" title="Please enter a valid phone number (+,country code 92 e.g. +923408167398)">
                                    <textarea class="massage-bt" placeholder="Message" rows="5" id="comment" name="message" required></textarea>
                                    <button class="send_bt">Send</button>
                               </form>

                            </div>
                        </div>
                        <div class="col-md-6">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- contact section end -->
    <!-- Footer section start -->
    <div class="footer_section layout_padding" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <h1 class="customer_text">Sprinkles & Swirls</h1>
                    <p style="text-align: justify;" class="footer_lorem_text">Welcome to Sprinkles & Swirls, where we create delightful treats. Our passion is to bring joy and happiness through our baked goods.</p>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h1 class="customer_text">Let us help you</h1>
                    <p style="text-align: justify;" class="footer_lorem_text">At Sprinkles & Swirls, we take pride in our artistic designs that make our baked goods visually appealing. Each creation is crafted with love.</p>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h1 class="customer_text">INFORMATION</h1>



                    <br><br><br><a class="footer_lorem_text1" href="index">Home</a>
                    <a class="footer_lorem_text1" href="index#about">About</a>
                    <a class="footer_lorem_text1" href="index#menu">Menu</a>
                    <a class="footer_lorem_text1" href="shop">Shop</a>


                </div>
                <div class="col-lg-3 col-sm-6">
                    <h1 class="customer_text">Contact Us</h1>
                    <p class="footer_lorem_text">
                        Islamabad Pakistan<br>

                        25296@students.riphah.edu.pk<br>
                        2484@students.riphah.edu.pk

                        <a class="footer_lorem_text1" href="index#contact">Contact</a>
                    </p>
                </div>
            </div>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Enter your email" aria-label="Enter your email" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <span class="input-group-text" id="basic-addon2" ><a href="#" >Subscribe</a></span>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer section end -->
    <!-- copyright section start -->
    <div class="copyright_section">
        <div class="container">
            <div class="social_icon">
                <ul>
                    <li><a href="https://www.facebook.com/profile.php?id=100013450172275"><img src="images/fb-icon.png"></a></li>
                    <li><a href="https://twitter.com/hirashahzad565"><img src="images/twitter-icon.png"></a></li>
                    <li><a href="https://www.instagram.com/hs_art_565/"><img src="images/instagram-icon.png"></a></li>
                    <li><a href="https://www.linkedin.com/in/hira-shahzad-ab6a72235/"><img src="images/linkedin-icon.png"></a></li>
                </ul>
            </div>
            <p class="copyright_text">2023 All Rights Reserved. Design by Hira Shahzad & Nida Javed</a></p>
        </div>
        <!-- copyright section end -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript -->
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <!-- login -->
        <script src="js/script.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>