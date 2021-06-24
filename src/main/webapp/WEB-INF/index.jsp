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
                Main page for this 2. semester start project used at cphbusiness.dk
            </div>

            <c:if test="${sessionScope.role == 'admin' }">
                <p style="font-size: larger">This is what you can do,
                    since your are logged in as an admin</p>
                 <p><a href="fc/adminpage">Admin Page</a>
             </c:if>

             <c:if test="${sessionScope.role == 'student' }">
                <p style="font-size: larger">This is what you can do, since your
                    are logged in as a student</p>
                <p><a href="fc/studentpage">Student Page</a>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>