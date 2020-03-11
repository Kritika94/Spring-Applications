<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.example.demo.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 class="text-success">Find Employee</h1>
<div class="container-fluid">
<form action='getEmployee'>

<div class='form-group'>
<label>Employee ID </label>
<input type="number" name='empId' placeholder='Enter EmpID ' class='form-control'/>
</div>
 <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>
<%
Employee emp=(Employee)request.getAttribute("Result");
if(emp!=null)
{%>

  <h2>Employee Details</h2>
  <table class="table">
  <thead>
  <tr>
  <td>Employee ID</td>
  <td>Name</td>
  <td>Address</td>
  <td>Experience years</td>
  <td>Skills</td>
  </tr>
  </thead>
  <tbody>
  <tr>
  	 <td><%=emp.getEmpId()%></td>
  	 <td><%=emp.getEmpname()%></td>
	 <td><%=emp.getEmpaddress()%></td>
	 <td><%=emp.getExperienceyrs()%></td>
	 <td><%=emp.getSkills()%></td>
	 
	    
  </tr>
   </tbody>
 </table>

<%} %>

</body>
</html>