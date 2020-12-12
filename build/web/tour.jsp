<%-- 
    Document   : tour
    Created on : 02-Sep-2020, 15:13:51
    Author     : giang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Screen</title>
        <script src="assets/js/pagger.js"></script>      
        <link rel="stylesheet" href="assets/css/custom.css" type="text/css"/>
    </head>
    <body>   

        <c:forEach items="${requestScope.tours}" var="tour">
            <form action="tourDetail" method="POST" id="${tour.getTourID()}">
                <table border="1px" style="border-collapse: collapse;">
                    <thead>
                    <h4 onclick="document.getElementById(${tour.getTourID()}).submit()">${tour.getTitle()}</h4>
                    </thead>
                    <tr>
                        <td rowspan="4"><img src="assets/img/tourImg/${tour.getImage()}" width="300px"></td>             
                        <td>TourID: <input type="hidden" name="id" value="${tour.getTourID()}"> ${tour.getTourID()}</td>
                    </tr>
                    <tr>
                        <td>Time: ${tour.getFromDate()} - ${tour.getToDate()}</td>
                    </tr>
                    <tr>
                        <td>Price: ${tour.getPrice()}</td>
                    </tr>
                    <tr>
                        <td>Start Place: ${tour.getStartPlace()}</td>
                    </tr>
                </table>
            </form>
        </c:forEach>
        <footer>
            <div class="pagger"/></div>
    </footer>
    <script>
        pagger(${requestScope.pageindex}
        ,${requestScope.totalpage}
        , 2
                , 'mainScreen'
                );
    </script>
</body>
</html>
