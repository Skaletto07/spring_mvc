<%--
  Created by IntelliJ IDEA.
  User: tamyk
  Date: 10.06.2022
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <ul>
        <li> <a href="http://localhost:8080/MVC/employee/">Main</a> </li>
        <li><a href="askDetails">Please write your details</a> </li>
    </ul>

    <title>Title</title>
</head>
<body>
<h2>Dear Employee, please enter your details!</h2>
<br>
<br>

<form action="showDetails" method="get">
    <input type="text" name="employeeName"
    placeholder="Write your name"/>
    <input type="submit">
</form>

</body>
</html>
