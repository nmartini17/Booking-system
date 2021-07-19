<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Student Roles
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        <h3>Velkommen til CPHBusiness bookingportal.</h3>
        Role: ${sessionScope.role} <br/>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/fc/bookingpage" role="button">Lån udstyr</a>
    </jsp:body>

</t:genericpage>

