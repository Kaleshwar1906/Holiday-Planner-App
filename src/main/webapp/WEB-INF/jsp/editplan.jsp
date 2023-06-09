<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet'>
<title>Travel the world efficiently</title>

<style>
body {
	background-color: background;
}

table {
	margin: auto;
	width: 70%;
}

.input {
	margin: 10px 0px 20px 330px;
	padding: 10px 60px;
	border-radius: 5px;
}

h2 {
	text-align: center;
	font-family: Audiowide;
	margin-top: 100px;
	color: white;
}

.submit {
	margin-left: 380px;
	padding: 10px 20px;
	font-family: Audiowide;
	border-radius: 10px;
	background-color: white;
}

.input:focus {
	color: navy;
}

.submit:hover {
	color: red;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>All Details are mandatory</h2>
		<form:form action="/editedtheplan" method="get"
			modelAttribute="editplandata">
			<table>
				<tr>
					<td><form:input path="startCity" name="startCity"
							placeholder="Starting City" type="text" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:input path="startDate" name="startDate"
							placeholder="Date Eg: '00/00/0000' " type="text" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:input path="endDate" name="endDate"
							placeholder="Date Eg: '00/00/0000' " type="text" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:input path="noOfDays" name="noOfDays"
							placeholder="number of days" type="text" cssClass="input" /></td>
				</tr>
				<tr>
					<td><form:input path="noOfPeople" name="noOfPeople"
							placeholder="Number of people " type="text" cssClass="input" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Make Changes" class="submit"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>