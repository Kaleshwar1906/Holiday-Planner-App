
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet'>
<link rel="stylesheet" href="css/login.css">
<link rel="icon" type="image/png" href="images/icon.png">
<title>Travel the world efficiently</title>
</head>
<body>
	<div class="form-container">
		<h2>Login</h2>
		<form:form action="/home" method="post" modelAttribute="logindata">
			<table>
				<tr>
					<td><form:input path="email" name="email" type="email"
							placeholder="Email" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:errors path="email" cssClass="errors"></form:errors></td>
				</tr>
				<tr>
					<td><form:input path="password" name="password"
							type="password" placeholder="Password" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:errors path="password" cssClass="errors"></form:errors></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" class="submit"></td>
				</tr>
				<tr>
					<td><a href="/main">Home</a> &emsp; <label>Not having
							an account?</label><a href="/register">Sign up</a></td>
				</tr>
				<tr>
			</table>
		</form:form>
		<h2 class="error">${error}</h2>
	</div>
</body>
</html>