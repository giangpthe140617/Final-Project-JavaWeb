<%-- 
    Document   : showCustomer
    Created on : 03-Sep-2020, 02:21:48
    Author     : giang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Customer</title>
    </head>
    <body>
        <h3>${requestScope.tourID}</h3>
        <c:forEach items="${sessionScope.customers}" var="c">
            <table  border="1px solid black">
                <tr>
                    <td>Customer Name: </td> 
                    <td>${c.getName()}</td>
                </tr>
                <tr>
                    <td>DOB: </td> 
                    <td>${c.getDob()}</td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                        <c:if test="${c.isGender()}">
                            Male
                        </c:if>
                        <c:if test="${!c.isGender()}">
                            Female
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>Room: </td>
                    <td> 
                        <c:if test="${c.isSingleRoom()}">
                            Single
                        </c:if>
                        <c:if test="${!c.isSingleRoom()}">
                            Non
                        </c:if>
                    </td>                          
                </tr>
                <br/>
            </table>
        </c:forEach>
        <br/>
        <form action="list" method="GET">
            <input type="hidden" name="tourId" value="${requestScope.tourId}">
            <input type="checkbox" name="cbxConfirm" value="confirmed" />
            <input type="submit" value="Confirm" />
        </form>
    </body>
</html>
