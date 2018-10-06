<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Employee Management Screen</title>
<link href="<c:url value="/resources/css/main.css" />"
	rel="stylesheet">

</head>
<body>
	<div align="center">
		<h1>Employee Details</h1>
		<table class="cssTable">
			<tr>
				<td>Emp Id</td>
				<td>${emp.empid}</td>
			</tr>
			<tr>
				<td>First Name</td>
				<td>${emp.firstName}</td>
			</tr>
			</tr>
			<td>Last Name</td>
			<td>${emp.lastName}</td>
			</tr>
			<tr>
				<td>DOB</td>
				<td>${emp.dateOfBirth}</td>
			<tr>
			</tr>
			<td>Gender</td>
			<td>${emp.gender }</td>
			</tr>
			<tr>
				<td>Salary</td>
				<td>${emp.salary}</td>
			</tr>
		</table>
	</div>
</body>
</html>
