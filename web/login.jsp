<%-- 
    Document   : login
    Created on : 31-Aug-2020, 22:47:07
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
        <nav class="navbar navbar-light navbar-expand-md">
            <div class="container-fluid"><a class="navbar-brand" href="homeScreen.jsp" style="font-size: 30px;margin-left: 100px;font-family: 'Kaushan Script', cursive;background-color: #ffffff;">G-Travel</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav"></ul>
                </div>
            </div>
        </nav><div class="login-clean" style ="background-image: url('assets/img/lanthu3.jpg'); background-repeat: no-repeat; background-position: center; background-color: #df9f9f;">
            <form action="login" method="post">
                <h2 class="sr-only">Login Form</h2>
                <div class="illustration"><i class="icon ion-ios-navigate"></i></div>
                <div class="form-group"><input type="email" class="form-control" name="email" placeholder="Email" /></div>
                <div class="form-group"><input type="password" class="form-control" name="password" placeholder="Password" /></div>
                <div class="form-group"><a href="mainScreen.jsp"> <button class="btn btn-primary btn-block" type="submit">Log In</button></a></div> 
                <a class="forgot" href="#">Forgot your email or password?</a></form>
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