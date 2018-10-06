<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="<c:url value="/resources/js/main.js" />"></script>

<title>Insert title here</title>

</head>
<body>
	<h1>Welcome to Employee Portal</h1>
	<span> <form:form method="post" action="viewemp">
			<input type="text" name="empid" /><br>
			<input type="submit" value="Show Employee Details" id="mySubmit" />
		</form:form>
	</span>
	<span> <form:form method="post" action="showRegistration">
			<input type="submit" value="Register Employee" />
		</form:form>
	</span>
	
</body>
</html>