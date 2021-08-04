<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Demo Page for Admin Roles
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <h1>Hello ${sessionScope.email}</h1>
        You are now logged in as an ADMIN of our wonderful site.<br/>

        <a class="btn btn-primary" href="${pageContext.request.contextPath}/fc/showstudents" role="button">Vis alle studerende</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/fc/showitems" role="button">Vis alt som kan bookes</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/fc/registerpage" role="button">Opret studerende</a>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/fc/showbooking" role="button">Se liste over alt som er booket</a>
    </jsp:body>
</t:genericpage>
