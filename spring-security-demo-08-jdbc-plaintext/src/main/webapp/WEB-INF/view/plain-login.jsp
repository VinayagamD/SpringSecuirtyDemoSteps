<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Login Page</title>

<style type="text/css">
.failed {
	color: red;
}
</style>
</head>
<body>

	<h3>My Custom Login Page</h3>

	<hr>

	<form:form
		action="${pageContext.request.contextPath}/authenticateTheUser"
		method="POST">

		<c:if test="${param.error != null }">
			<i class="failed">Sorry! you have entered invalid username /
				password</i>

		</c:if>

		<p>
			User Name: <input type="text" name="username" />
		</p>

		<p>
			Password: <input type="password" name="password" />
		</p>
		<input type="submit" value="Login" />


	</form:form>

</body>
</html>