<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vinay Company Home Page</title>
</head>
<body>

	<h2>Vinay Company Home Page - Yoohoo - Silly Goose!!!</h2>

	<hr>

	Welcome to the Vinay Company Home Page!

	<!-- Add logout button -->

	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout"/>

	</form:form>

</body>
</html>