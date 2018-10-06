<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<head>
<script>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
</script>
</head>
		<h1>Show Registration</h1>
       <form:form name="myForm" method="post" action="save"  modelAttribute="emp" onsubmit="return validateForm()">  
      	<table class="cssTable">  
      	<tr>  
          <td>Employee Id :</td>  
          <td><form:input path="empid" /></td>
         </tr>
         <tr>  
          <td>First Name :</td>  
          <td><form:input path="firstName" /></td>
         </tr> 
         <tr>  
          <td>Last Name :</td>  
          <td><form:input path="lastName" /></td>
         </tr> 
         <tr>  
          <td>Date of Birth :</td>  
          <td><form:input path="dateOfBirth" /></td>
         </tr> 
         <tr>  
          <td>Gender :</td>  
          <td><form:input path="gender" /></td>
         </tr> 
         <tr>  
          <td>Salary :</td>  
          <td><form:input path="salary" /></td>
         </tr> 
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
