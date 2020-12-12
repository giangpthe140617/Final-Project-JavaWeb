<%-- 
    Document   : insert
    Created on : 02-Sep-2020, 22:57:57
    Author     : giang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Customer</title>
        <script>
            var index = ${requestScope.size};
            function addCustomer() {
                var container = document.getElementById("customer_container");
                var takeCustomer = document.createElement("div");
                takeCustomer.id = "Customer" + index;
                takeCustomer.innerHTML += "<table border='1px solid black'>\n"
                        + "                        <tr>\n"
                        + "                            <td>Customer Name: </td> \n"
                        + "                            <td><input type='text' name='cname" + index + "' /></td>\n"
                        + "                        </tr>\n"
                        + "                        <tr>\n"
                        + "                            <td>DOB: </td> \n"
                        + "                            <td><input type='date' name='cdob" + index + "' /></td>\n"
                        + "                        </tr>\n"
                        + "                        <tr>\n"
                        + "                            <td>Gender: </td>\n"
                        + "                            <td><input type='radio' name='gender" + index + "' value='Male' checked='checked' />Male\n"
                        + "                                <input type='radio' name='gender" + index + "' value='Femmale' />Female</td>\n"
                        + "                        </tr>\n"
                        + "                        <tr>\n"
                        + "                            <td>Room: </td>\n"
                        + "                            <td> \n"
                        + "                                <input type='radio' name='roomType" + index + "' value='single' checked='checked' />Single\n"
                        + "                                <input type='radio' name='roomType" + index + "' value='non' /> Non\n"
                        + "                            </td>                          \n"
                        + "                        </tr>\n"
                        + "                    </table>";
                container.appendChild(takeCustomer);
                index++;
                document.getElementById("num").value = index;
            }
        </script>
    </head>
    <body>

        <form action="insertCustomer" method="POST">
            <input type="hidden" name="tourId" value="${requestScope.tourId}">
            <div>
                User: ${sessionScope.user.getEmail()} <br/>
                Phone: ${sessionScope.user.getPhoneNumber()} <br/>
            </div>

            <div id="customer_container" class="border">
                <c:if test="${requestScope.size != 0}">
                    <c:forEach begin="0" end="${requestScope.size - 1}" var="i">
                        <c:set var="c" value="${sessionScope.customers.get(i)}" ></c:set>
                            <table border="1px solid black">
                                <tr>
                                    <td>Customer Name: </td> 
                                    <td><input type="text" name="cname${i}" value="${c.getName()}"/></td>
                            </tr>
                            <tr>
                                <td>DOB: </td> 
                                <td><input type="date" name="cdob${i}" value="${c.getDob()}"/></td>
                            </tr>
                            <tr>
                                <td>Gender: </td>
                                <td><input type="radio" name="gender${i}" value="Male" 
                                           <c:if test="${c.isGender()}">
                                               checked="checked"
                                           </c:if>
                                           />Male
                                    <input type="radio" name="gender${i}" value="Femmale"
                                           <c:if test="${!c.isGender()}">
                                               checked="checked"
                                           </c:if>
                                           />Female</td>
                            </tr>
                            <tr>
                                <td>Room: </td>
                                <td><input type="radio" name="roomType${i}" value="Single" 
                                           <c:if test="${c.isSingleRoom()}">
                                               checked="checked"
                                           </c:if>
                                           />Single
                                    <input type="radio" name="roomType${i}" value="Non"
                                           <c:if test="${!c.isSingleRoom()}">
                                               checked="checked"
                                           </c:if>
                                           />Non</td>                          
                            </tr>
                        </table>
                    </c:forEach>
                </c:if>
            </div>
            <input type="button" value="More Customer" onclick="addCustomer()"/>
            <input type="hidden" id="num" value="${requestScope.size}" name="num" />
            <input type="submit" value="Check" />
        </form>  
    </body>
</html>
