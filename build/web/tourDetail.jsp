<%-- 
    Document   : tourDetail
    Created on : 02-Sep-2020, 18:31:32
    Author     : giang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tour Detail</title>
        <style>

            .center {
                margin: 0;
                position: absolute;
                top: 60%;
                left: 50%;
                -ms-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
            }
        </style>
    </head>
    <body>
        <form action="insertCustomer" method="GET">
            <h2>${requestScope.tour.getTitle()}</h2>
            <table border="1px">
                <tr>
                    <td rowspan="4"><img src="assets/img/tourImg/${requestScope.tour.getImage()}" width="300px"></td> 
                    <td>TourID: ${requestScope.tour.getTourID()} <input type="hidden" name="tourId" value="${requestScope.tour.getTourID()}"></td>
                </tr>
                <tr>
                    <td>Time: ${requestScope.tour.getFromDate()} - ${requestScope.tour.getToDate()}</td>
                </tr>
                <tr>
                    <td>Price: ${requestScope.tour.getPrice()}</td>
                </tr>
                <tr>
                    <td>Start Place: ${requestScope.tour.getStartPlace()}</td>
                </tr>
            </table>
            <h3>Detail Timeline: </h3>
            <p>${requestScope.tour.getDetailTimeline()}</p>

            <div class="center">
                <input type="submit" value="Book Tour"/>
            </div>
        </form>

        <br><br><br>
        <form action="insertComment" method="POST">
            <table>
                <thead>
                <h3>Comments(${requestScope.cmts.size()}) : </h3>
                </thead>
                <c:forEach items="${requestScope.cmts}" var="cmt">
                    <tr>
                        <th>${cmt.getEmail()}: </th>
                        <td>${cmt.getContent()}</td>                    
                    </tr>
                </c:forEach>

                <tr>
                    <td>
                        <input type="text" name="${requestScope.tour.getTourID()}" value="" />
                    </td>
                    <td>
                        <button type="submit" value="${requestScope.tour.getTourID()}" name="add">Add</button>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
