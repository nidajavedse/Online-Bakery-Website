<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Shop</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
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
   </head>
   <body>
      <!-- header section start -->
    <div class="header_section">
        <div class="container-fluid">
            <nav id="navigationBar" class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="logo"><a href="index.html"><img src="images/logo.png"></a></div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index#menu">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index#about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index#contact">Contact</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <h1 class="call_text">Call Us : +01 1234567890</h1>
                    </form>
                    <div class="search_icon">
                        <ul>
                            <li><button class="btnLogin-popup" style="display: none;">Login</button></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- header section end -->
      <!-- login section Start -->
    <div class="mypopup">
      <div class="wrapper">
         <span class="icon-close"><ion-icon name="close"></ion-icon></span>
         <div class="form-box login">
             <h2>Login</h2>
             <form action="#">
                 <div class="input_box">
                     <span class="icon">
                         <ion-icon name="mail"></ion-icon>
                     </span>
                     <input type="email" required>
                     <label>Email</label>
                 </div>
                 <div class="input_box">
                     <span class="icon">
                         <ion-icon name="lock-closed"></ion-icon>
                     </span>
                     <input type="password" required>
                     <label>Password</label>
                 </div>
                 <div class="remember-forgot">
                     <label><input type="checkbox">
                     Remember me</label>
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
             <form action="#">
                 <div class="input_box">
                     <span class="icon">
                         <ion-icon name="person"></ion-icon>
                     </span>
                     <input type="text" required>
                     <label>Username</label>
                 </div>
                 <div class="input_box">
                     <span class="icon">
                         <ion-icon name="mail"></ion-icon>
                     </span>
                     <input type="email" required>
                     <label>Email</label>
                 </div>
                 <div class="input_box">
                     <span class="icon">
                         <ion-icon name="lock-closed"></ion-icon>
                     </span>
                     <input type="password" required>
                     <label>Password</label>
                 </div>
                 <div class="remember-forgot">
                     <label><input type="checkbox">
                     I agree to the terms & conditions</label>
                 </div>
                 <button type="submit" class="btnlog">Register</button>
                 <div class="login-register">
                     <p>Already have an account?
                     <a href="#" class="login-link"> Login</a>
                     </p>
                 </div>
             </form> 
         </div>
     </div>
 </div>
     <!-- login section end -->
      <!-- cart section start -->
      <div class="container">
         <header>
             <h1>Shop</h1>
             <div class="shopping">
                 <img src="images/shopping.svg">
                 <span class="quantity">0</span>
             </div>
         </header>
         <div class="list">
           
         </div>
         
     </div>
     <br>
        <br>
           <br>
     <div class="card">
         <h1>Cart</h1>
         <ul class="listCard">
         </ul>
         <div class="checkOut">
             <div class="total">0</div>
             <div class="closeShopping">Close</div>
         </div>
     </div>
 
      <!-- cart section end -->
      <!-- Order section Start -->
      <div class="myheader">
         <div class="mycontainer">
            <span class="Order-icon-close"><ion-icon name="close"></ion-icon></span>
            <div class="left">
               <h3 style="color:black; font-size: 21px;">Check Out</h3>
               <form action="/saveOrder" method="POST">
                  <span style="color:black; font-size: 19px;  display: flex; ">Full name</span>   
                  
                 
                  <input type="text" id= "name" name="name" placeholder="Enter name" pattern="[A-Za-z\s]+" required title="Please enter a valid name (letters and spaces only)">
                  <span style="color:black; font-size: 19px; display: flex; ">Phone Number</span>  
                 
                  <input type="text" id= "phoneNo" name="phoneNo" placeholder="Enter phone number"  pattern="^\+?[0-9]{12,}$" required title="Please enter a valid phone number (+,country code 92 e.g. +923408167398)">
                  <span style="color:black; font-size: 19px;  display: flex; ">Address</span>  
                 
                  <input type="text" id= "address" name="address" placeholder="Enter address" required>
                  <span style="color:black; font-size: 19px; display: flex; ">City</span>  
                 
                  <input type="text" id= "city" name="city" placeholder="Enter city" required>
                  <span style="color:black; font-size: 19px; display: flex; ">Special Instruction</span>  
                 
                  <textarea type="text" id="specialIns" name="specialIns" placeholder="Enter special instruction" required></textarea>
                   
                   <input type="hidden" name="status" value="Pending" id="status">
                   <input type="hidden" name="productsname" value="" id="productsname" >
                   <input type="hidden" name="grandtotal" value="0" id="grandtotal">
                   <input type="submit" name="" value="Place Order">
               </form>
            </div>
            <div class="right">
               <div class="rightmore">
                  <h3 style="color:black; font-size: 19px;">Payment</h3>
   
                  <input style="color:black; font-size: 14px; margin-top: 6px; font-size: 12px; background-color: rgb(232, 232, 232); padding: 6px 70px; border-top-width: 2px; border-top-style: solid; font-weight: 600;margin-bottom: 20px;  margin: 0;" type="text" name="" placeholder="Only Cash" disabled>
                  <br><br>
                  
                  <div style="color:black; font-size: 14px; margin-top: 6px; font-size: 12px; background-color: #fde5ea; padding: 4px 8px; border-top-width: 2px; border-top-style: solid; border-top-color: #9c0746; font-weight: 600;margin-bottom: 20px;  padding: 10px;  margin: 0;" >You've got FREE delivery!</div>
               
                  <span style="color:black; font-size: 16px; margin: 6px 0px; display: flex; justify-content: space-between;">Subtotal </span>   
                  <span style="margin-top: 6px; font-size: 12px; background-color: rgb(232, 232, 232); padding: 4px 8px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(0, 0, 0); font-weight: 600;margin-bottom: 20px;  padding: 10px;  margin: 0;">Rs.</span>
                  <span style="margin-top: 6px; font-size: 12px; background-color: rgb(232, 232, 232); padding: 4px 8px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(0, 0, 0); font-weight: 600;margin-bottom: 20px;  padding: 10px;  margin: 0;" id="mytotal">0</span>
                  <span style="color:black; font-size: 16px; margin: 6px 0px; display: flex; justify-content: space-between;">Grand Total</span>  
                  <span style="margin-top: 6px; font-size: 12px; background-color: rgb(232, 232, 232); padding: 4px 8px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(0, 0, 0); font-weight: 600;margin-bottom: 20px;  padding: 10px;  margin: 0;">Rs.</span>
                  <span style="margin-top: 6px; font-size: 12px; background-color: rgb(232, 232, 232); padding: 4px 8px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(0, 0, 0); font-weight: 600;margin-bottom: 20px;  padding: 10px;  margin: 0;" id="mygrandtotal">0</span>
                  <span style="color:black; font-size: 16px; margin: 6px 0px; display: flex; justify-content: space-between;">Your Cart</span>  
                  <div style="font-size: 14px; margin-top: 6px; font-size: 12px; background-color: rgb(232, 232, 232); padding: 4px 8px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(0, 0, 0); font-weight: 600;margin-bottom: 20px;  padding: 10px;  margin: 0;" id="myproductsname" data-placeholder="my order">No item!</div>
               </div>
            </div>
         </div>
      </div>
       
     <!-- Order section end -->

     <!-- Thank you popup start -->
     <div id="thankYouPopup" class="thank-you-popup">
  <div class="thank-you-container">
    <img src="images/checked-2.png" alt="Success Image">
    <p>Thank you for your order!</p>
    <form action="thankOk">
    <button class="ok-button"><a href="shop" style="color: white;">ok</a></button>
    </form>
  </div>
</div>
     <!-- Thank you popup end --> 

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
                  <span class="input-group-text" id="basic-addon2"><a href="#">Subscribe</a></span>
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
      <!-- cart section javascript -->
      <script src="js/app.js"></script>
      <!-- login -->
      <script src="js/script.js"></script>
      <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
      <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
 
   </body>
</html>