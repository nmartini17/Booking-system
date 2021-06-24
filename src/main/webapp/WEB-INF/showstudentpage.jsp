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
        Her er en liste over alle studerende:
        <table class="table table-striped">
            <c:forEach var="student" items="${requestScope.studentlist}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.email}</td>
                </tr>
            </c:forEach>
        </table>
    </jsp:body>

</t:genericpage>

