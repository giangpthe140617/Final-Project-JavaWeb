<%-- 
    Document   : register
    Created on : 31-Aug-2020, 22:47:15
    Author     : giang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Java Web Project</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/--mp--Animated-Service-Box-1.css">
        <link rel="stylesheet" href="assets/css/--mp--Animated-Service-Box.css">
        <link rel="stylesheet" href="assets/css/Contact-FormModal-Contact-Form-with-Google-Map.css">
        <link rel="stylesheet" href="assets/css/Data-Table-with-Search-Sort-Filter-and-Zoom-using-TableSorter.css">
        <link rel="stylesheet" href="assets/css/Features-Boxed-Remixed-1.css">
        <link rel="stylesheet" href="assets/css/Features-Boxed-Remixed-2.css">
        <link rel="stylesheet" href="assets/css/Features-Boxed-Remixed-3.css">
        <link rel="stylesheet" href="assets/css/Features-Boxed-Remixed.css">
        <link rel="stylesheet" href="assets/css/Hero-Travel.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
        <link rel="stylesheet" href="assets/css/Navigation-Clean.css">
        <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

    <body><nav class="navbar navbar-light navbar-expand-md navigation-clean" style = "background-color:#2E2E2E ">
            <div class="container"><a class="navbar-brand" href="#page-top" style="font-size: 28px;font-family: 'Kaushan Script', cursive;color: rgb(254,197,3);">G-Travel</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item dropdown"><a data-toggle="dropdown" 
                                                         aria-expanded="false" 
                                                         class="dropdown-toggle nav-link" 
                                                         href="#" style="color: yellow">Travel </a>
                            <div role="menu" class="dropdown-menu">
                                <a role="presentation" class="dropdown-item" 
                                   href="domesticTourism.jsp">Domestic tourism</a>
                                <a role="presentation" class="dropdown-item" 
                                   href="travelAbroad.jsp">Travel abroad</a>
                                <a role="presentation" class="dropdown-item" href="Travel_buffet.html">
                                    Travel buffet</a></div>
                        </li>
                        <li role="presentation" class="nav-item"><a class="nav-link" href="https://tripu.vn/vi/hotels" style="color: yellow">Hotel</a></li>
                        <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#" style="color: yellow">Transport </a>
                            <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="http://car4rent.com/">Car rental</a><a role="presentation" class="dropdown-item" href="https://www.worldtrans.vn/">Air ticket</a></div>
                        </li>
                        <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#" style="color: yellow">Another</a>
                            <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="News.html">News</a><a role="presentation" class="dropdown-item" href="Contact.html">Contact</a><a role="presentation" class="dropdown-item" href="login.jsp">Log out</a></div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav><section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-4">
                        <div class="serviceBox">
                            <div class="service-icon" href="Home_Screen.html" ><span><i class="fa fa-rocket" ></i></span></div>
                            <h1 class="titleBlurb">Domestic tourism</h1>
                            <p>Vietnam is the most beautiful country in the world, domestic tourism like a push help for our economy</p>
                            <a href="domesticTourism.jsp" ><input type="submit" value="See more" name="submit"></a>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="serviceBox pink">
                            <div class="service-icon"><span><i class="fa fa-rocket"></i></span></div>
                            <h1 class="titleBlurb">Travel abroad</h1>
                            <p>You want to go out of the country to see the world, find out and learn more let click here</p>
                            <a href="travelAbroad.jsp" ><input type="submit" value="See more" name="submit"></a>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="serviceBox blue">
                            <div class="service-icon"><span><i class="fa fa-rocket"></i></span></div>
                            <h1 class="titleBlurb">Travel buffet</h1>
                            <p>Make a trip by yourself and for yourself, limited exist only in your mind, if don't try, how you know you can</p>
                            <a href="Travel_buffet.html" ><input type="submit" value="See more" name="submit"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="features-boxed">
            <div class="container">
                <div class="intro">
                    <h2 class="text-center">Favorite destination</h2>
                    <p class="text-center">Domestic and foreign travel destination</p>
                </div>
                <div class="row features">
                    <div class="col-sm-6 col-md-4 item">
                        <div class="box">
                            <div class="image-box"><img class="box-image img-responsive" src="assets/img/halongbay.jpg"></div>
                            <div class="info-box">
                                <h3 class="name">Halong Bay</h3>
                                <p class="description"></p><a class="learn-more" href="#">Learn more »</a></div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 item">
                        <div class="box">
                            <div class="image-box"><img class="box-image img-responsive" src="assets/img/780_crop_SAPA.jpg"></div>
                            <div class="info-box">
                                <h3 class="name">Sapa</h3>
                                <p class="description"></p><a class="learn-more" href="#">Learn more »</a></div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 item">
                        <div class="box">
                            <div class="image-box"><img class="box-image img-responsive" src="assets/img/finaldn.jpg"></div>
                            <div class="info-box">
                                <h3 class="name">Da Nang</h3>
                                <p class="description"></p><a class="learn-more" href="#">Learn more »</a></div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 item">
                        <div class="box">
                            <div class="image-box"><img class="box-image img-responsive" src="assets/img/effen2.jpg"></div>
                            <div class="info-box">
                                <h3 class="name">Europe</h3>
                                <p class="description"></p><a class="learn-more" href="#">Learn more »</a></div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 item">
                        <div class="box">
                            <div class="image-box"><img class="box-image img-responsive" src="assets/img/Tuong-nu-than-tu-do-1280x720.jpg"></div>
                            <div class="info-box">
                                <h3 class="name">America</h3>
                                <p class="description"></p><a class="learn-more" href="#">Learn more »</a></div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 item">
                        <div class="box">
                            <div class="image-box"><img class="box-image img-responsive" src="assets/img/ttuthapg.jpg"></div>
                            <div class="info-box">
                                <h3 class="name">Africa</h3>
                                <p class="description"></p><a class="learn-more" href="#">Learn more »</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div><br>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="assets/js/agency.js"></script>
        <script src="assets/js/Contact-FormModal-Contact-Form-with-Google-Map.js"></script>
        <script src="assets/js/Data-Table-with-Search-Sort-Filter-and-Zoom-using-TableSorter.js"></script>
        <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/jquery.tablesorter.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/widgets/widget-filter.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/widgets/widget-storage.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
