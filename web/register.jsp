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
        <title>JavaWebProject</title>
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

    <body>
        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav" style="height: 102px;">
            <div class="container"><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div
                    class="collapse navbar-collapse" id="navbarResponsive" style="height: 127px;"><a class="navbar-brand text-left" href="homeScreen.jsp" style="font-size: 28px;">G-Travel</a></div>
            </div>
        </nav>
        <div class="register-photo">
            <div class="form-container">
                <form action="register" method="post">
                    <h2 class="text-center"><strong>Create</strong> an account.</h2>
                    <div class="form-group"><strong style="font-size: 14px;">What's your email?</strong><input type="email" class="form-control" name="email" placeholder="Enter your email" /></div>
                    <div class="form-group"><strong style="font-size: 14px;">Create a password</strong><input type="password" class="form-control" name="password" placeholder="Create a password" /></div>
                    <div class="form-group"><strong style="font-size: 14px;">Confirm your password</strong><input type="password" class="form-control" name="password-repeat" placeholder="Confirm your password" /></div> 
                    <div class="form-group"><strong style="font-size: 14px;">Where is your address?&nbsp;</strong><input class="form-control" type="text" name="address" placeholder="Enter your address" /></div>
                    <div class="form-group"><strong style="font-size: 14px;">What's your date of birth?</strong><input class="form-control" type="date" name="dob"></div>
                    <div class="form-group"><strong style="font-size: 14px;">What's your gender?</strong><select class="form-control" name="gender"><optgroup ><option value="12" selected>Male</option><option value="13">Female</option><option value="14">Prefer not to say</option></optgroup></select></div>
                    <div class="form-group"><strong>What's your phone number?</strong><input class="form-control" type="tel" name="phoneNumber" placeholder="Enter your phone number" /></div><div class="form-check" style="border: 1px black dotted; display: inline-block;"></div>
                    <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Sign Up</button></div><a class="already" href="login.jsp">You already have an account? Login here.</a></form>
            </div>
        </div>
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