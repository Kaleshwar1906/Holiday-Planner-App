<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet'>
<link rel="stylesheet" href="css/register.css">
<link rel="icon" type="image/png" href="images/icon.png">
<title>Travel the world efficiently</title>
</head>
<body>
	<div class="form-container">
		<h2>Register</h2>
		<form:form action="/mainpage" method="post"
			modelAttribute="registerdata">
			<table>
				<tr>
					<td><form:input path="email" name="email"
							placeholder="Your Email" type="email" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:errors path="email" cssClass="errors"></form:errors></td>
				</tr>
				<tr>
					<td><form:input path="password" name="password"
							placeholder="Create password" type="password" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:errors path="password" cssClass="errors"></form:errors></td>
				</tr>
				<tr>
					<td><form:input path="username" name="username"
							placeholder="Set UserName" type="text" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:errors path="username" cssClass="errors"></form:errors></td>
				</tr>
				<tr>
					<td><input type="submit" value="Sign up" class="submit"></td>
				</tr>
				<tr>
					<td><a href="/main" class="home">Home</a> &emsp; <label>Already
							having an account?</label><a href="/login">Login</a></td>
				</tr>
			</table>
		</form:form>
		<h2 class="error">${error1}</h1>
			<h2 class="error">${error2}</h1>
	</div>
</body>
</html>