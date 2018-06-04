<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danielconner
  Date: 6/4/18
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
    <c:forEach var="ad" items="${ads}">
        <h1 style="margin-left: 20px">${ad.title}</h1>
        <p style="margin-left: 20px">${ad.description}</p>
        <hr>
    </c:forEach>

</body>
</html>
