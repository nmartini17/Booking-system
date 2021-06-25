<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Vis alt som kan bookes
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        <h3>Her er en liste over alt det udstyr som kan bookes:</h3>
        <table class="table table-striped table-bordered table-hover">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Navn</th>
                <th scope="col">Beskrivelse</th>
                <th scope="col">Item tag</th>
                <th scope="col">Item type</th>
                <th scope="col">Room number</th>
            </tr>
            <c:forEach var="item" items="${requestScope.itemList}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.description}</td>
                    <td>${item.itemTag}</td>
                    <td>${item.itemType}</td>
                    <td>${item.roomNumber}</td>
                </tr>
            </c:forEach>
        </table>
    </jsp:body>

</t:genericpage>

