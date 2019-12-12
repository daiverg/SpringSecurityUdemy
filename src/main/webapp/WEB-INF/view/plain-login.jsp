<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>.failed{color:red;} </style>
<title>My custom login form</title>
</head>
<body>

<h3>My custom Login page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

<!-- Check for error -->

<c:if test="${param.error != null }">
	<i class="failed"> Sorry! Wrong UserName or Password</i>
</c:if>

<p> 
User name: <input type="text" name="username" />
<br>
<br>
Password: <input type="password" name="password" />
</p>
<hr>
<input type="submit" value="Login" />


</form:form>

</body>
</html>