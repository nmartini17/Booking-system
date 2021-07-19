<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Vis alt som er booked
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        <h3>Her er en liste over alt det udstyr som er booked:</h3>
        <table class="table table-striped table-bordered table-hover">
            <tr>
                <th scope="col">Booking status</th>
                <th scope="col">Antal dage booket</th>
                <th scope="col">Booking Dato</th>
            </tr>
            <c:forEach var="booking" items="${requestScope.showbooking}">
                <tr>
                    <td>${booking.booking_status}</td>
                    <td>${booking.days}</td>
                    <td>${booking.booking_date}</td>
                </tr>
            </c:forEach>
        </table>
    </jsp:body>

</t:genericpage>

