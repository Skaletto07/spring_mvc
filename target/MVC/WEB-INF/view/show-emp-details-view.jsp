<%--
  Created by IntelliJ IDEA.
  User: tamyk
  Date: 10.06.2022
  Time: 18:44
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
<h2>Dear Employee, you are Welcome!</h2>
<br>

<%--Your name: ${param.employeeName}--%>
Your name: ${empName}

</body>
</html>
