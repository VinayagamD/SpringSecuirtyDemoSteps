<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

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

	<!-- Display user name and roles -->
	<p>
		User :
		<security:authentication property="principal.username" />
		<br>
		<br> 
		Role(s) :
		<security:authentication property="principal.authorities" />
 
	</p>
	<security:authorize access="hasRole('MANAGER')">
	<hr>
	
	<!-- Add a link to point to /leaders ... this is for managers  -->


	<p>
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip  Meeting</a>
		(Only for Managers peeps)
	</p>
	</security:authorize>
	<security:authorize access="hasRole('ADMIN')">
	
	<hr>
	
	<!-- Add a link to point to /systems ... this is for managers  -->
		
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for Admin peeps)
	</p>
	</security:authorize>
	
	<hr>
	
	<!-- Add logout button -->

	<form:form method="POST"
		action="${pageContext.request.contextPath}/logout">

		<input type="submit" value="Logout" />

	</form:form>

</body>
</html>