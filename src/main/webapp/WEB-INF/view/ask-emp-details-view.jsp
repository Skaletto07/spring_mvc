<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Department  <form:select path="department">
                 <%--<form:option value="Information Technology" label="IT"/>
                 <form:option value="Sales" label="Sales"/>
                 <form:option value="Human resources" label="HR"/>--%>
                    <form:options items="${employee.departments}"/>
                </form:select>
    <br>
    <br>
    <p>Which car do you want?</p>
        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
          <%--BMW <form:radiobutton path="carBrand" value="BMW"/>
          Audi <form:radiobutton path="carBrand" value="Audi"/>
          MB <form:radiobutton path="carBrand" value="Mersedes-Benz"/>--%>
    <br><br>
    <p>Foreign languages(s):</p>
    <form:checkboxes path="languages" items="${employee.languageList}" />
    <%--EN <form:checkbox path="languages" value="English"/>
    DE <form:checkbox path="languages" value="Deutsch"/>
    FR <form:checkbox path="languages" value="French"/>--%>
    <br><br>
    <p>Phone number: <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/> </p>
    <p>Email: <form:input path="email"/>
    <form:errors path="email"/> </p>
    <br><br>
    <input type="submit" value="Ok">

</form:form>

</body>
</html>
