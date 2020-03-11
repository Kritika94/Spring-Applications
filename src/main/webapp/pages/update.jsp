<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="com.example.demo.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<br>

<h1 class="text-success">Update Employee</h1>

<form action='updateEmployee'>
<div class="container-fluid">
<div class='form-group'>
<% Employee emp=(Employee)request.getAttribute("result");%>
<label>Employee ID </label>
<input type="number" name='empId' placeholder='Enter EmpID'  value="<%=emp.getEmpId()%>" class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Name </label>
<input type="text" name='empname' placeholder='Enter Name' value="<%=emp.getEmpname()%>" class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Address </label>
<input type="text" name='empaddress' placeholder='Enter Address' value="<%=emp.getEmpaddress() %>" class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Skills </label>
<input type="text" name='skills' placeholder='Enter Skills' value="<%=emp.getSkills()%>" class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Experience </label>
<input type="number" name='Experienceyrs' placeholder='Enter Experience' value="<%=emp.getExperienceyrs()%>"  class='form-control'/>
</div>
 <button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>
<h2 class='text-success'>${msg}</h2> 


</body>
  
  
  
  
  
</html>