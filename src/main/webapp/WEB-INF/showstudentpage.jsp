<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Vis alle studerende
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        <h3>Her er en liste over alle studerende:</h3>
        <table class="table table-striped table-bordered table-hover">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Navn</th>
                <th scope="col">Tlf. nr.</th>
                <th scope="col">Email</th>
                <th scope="col">Point</th>
            </tr>
            <c:forEach var="student" items="${requestScope.studentlist}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.phone}</td>
                    <td>${student.email}</td>
                    <td>${student.points}</td>
                </tr>
            </c:forEach>
        </table>
    </jsp:body>

</t:genericpage>

