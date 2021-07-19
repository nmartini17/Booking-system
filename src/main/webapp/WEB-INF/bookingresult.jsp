<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Kvittering
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            Her er hvad du har booked og i hvor lang tid:

            <!--Du har booked ${requestScope} i ${requestScope.getAmountOfDays} dage.-->
        </div>
    </jsp:body>
</t:genericpage>