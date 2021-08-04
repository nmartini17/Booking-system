<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Home
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div>
            <h2>Booking system</h2>

            <div style="margin-top: 3em;margin-bottom: 3em;">
                <p>Velkommen til CPHBusiness Lyngby udlejningsportal.</p>
            </div>

            <c:if test="${sessionScope.role == 'admin' }">
                <div style="margin-top: 3em;margin-bottom: 3em;">
                    <p>Gå til admin page ved at klikke på knappen under</p>
                </div>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/fc/adminpage" role="button">Admin page</a>
             </c:if>

             <c:if test="${sessionScope.role == 'student' }">
                 <div style="margin-top: 3em;margin-bottom: 3em;">
                     <p>Try på lån udstyr knappen herunder, for at komme i gang!</p>
                 </div>
                     <a class="btn btn-primary" href="${pageContext.request.contextPath}/fc/bookingpage" role="button">Lån udstyr</a>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>