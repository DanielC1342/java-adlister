<%--
  Created by IntelliJ IDEA.
  User: danielconner
  Date: 6/1/18
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Input your numbers</h1>
<form action="/calculator" method="post">
    <input type="text" name="num1" placeholder="enter a number"><br><br>
    <input type="text" name="num2" placeholder="enter another number"><br><br>
    <input type="radio" name="operator" value="+">Add
    <input type="radio" name="operator" value="*">Multiply <br><br>
    <input type="submit" value="submit">
</form>
</body>
</html>
