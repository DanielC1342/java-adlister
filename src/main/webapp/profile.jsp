<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <c:choose>
        <c:when test="${param.username=='admin' && param.password=='password'}">
            <h1>Welcome Admin!</h1>
        </c:when>
        <c:otherwise>
            <c:redirect url="/login.jsp" />
        </c:otherwise>
    </c:choose>

</body>
</html>
