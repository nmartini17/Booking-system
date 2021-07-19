<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Booking side
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>
    <jsp:body>
        <form name="items" action="${pageContext.request.contextPath}/fc/bookingresult" method="POST">
            <h3>Her er en liste over alt det udstyr som du kan booke:</h3>
            <table class="table table-striped table-bordered table-hover">
                <tr>
                    <th scope="col">Navn</th>
                    <th scope="col">Beskrivelse</th>
                    <th scope="col">Lokale</th>
                    <th scope="col">Book</th>
                </tr>
                <c:forEach var="item" items="${requestScope.itemList}">
                    <tr>
                        <td>${item.name}</td>
                        <td>${item.description}</td>
                        <td>${item.roomNumber}</td>
                        <td><input class="form-check-input" type="radio" name="item_id" id="item_id" value="${item.id}">
                            <label class="form-check-label" for="item_id"></label></td>
                    </tr>
                </c:forEach>
            </table>

            <br/>

            <div class="container-fluid row mb-3">
                <h4>Vælg det antal dage du vil udleje udstyret</h4>
                <p class="text-danger">OBS: Du kan maks udleje udstyr i 10 dage.</p>
                <label class="col-md-3 col-form-label">
                    <select class="form-select" aria-label="items" name="days">
                        <option selected>Antal dage</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                    </select>
                    <br/>
                    <input class="btn btn-primary" type="submit" value="Bestil">
                </label>
            </div>
        </form>
    </jsp:body>
</t:genericpage>
