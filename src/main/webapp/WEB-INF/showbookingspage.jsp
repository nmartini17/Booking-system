<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Vis alt som er booket
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        <h3>Her er en liste over alt det udstyr som er booket:</h3>

        <table class="table table-striped table-bordered table-hover">
            <tr>
                <th scope="col">Booking status</th>
                <th scope="col">Antal dage booket</th>
                <th scope="col">Booking Dato</th>
                <th scope="col">Afleveret</th>
            </tr>
            <c:forEach var="booking" items="${requestScope.showbooking}">
                <tr>
                    <td>${booking.booking_status}</td>
                    <td>${booking.days}</td>
                    <td>${booking.booking_date}</td>
        <form name="bookingreturned" action="${pageContext.request.contextPath}/fc/showbooking" method="POST">
                    <input type="hidden" name="booking_id" value="${booking.booking_id}">
                    <td><input class="btn btn-primary" type="submit" value="Afleveret"></td>
        </form>
                </tr>
            </c:forEach>
        </table>
    </jsp:body>

</t:genericpage>

