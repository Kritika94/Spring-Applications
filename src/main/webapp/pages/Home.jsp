<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>


</script>
</head>
<body>
<button class="btn btn-danger"><a style="text-decoratin:none; color:white" href="/">Create Employee </a></button>

<button class="btn btn-danger"><a style="text-decoratin:none; color:white" href="EmployeeDetails">Employee Details</a></button>
<button class="btn btn-danger"><a style="text-decoratin:none; color:white" href="EmployeeSpecificDetails">Find Employee</a></button>

<br>

<h1 class="text-success">Create Employee</h1>

<form action='addEmployee'>
<div class="container-fluid">
<div class='form-group'>
<label>Employee ID </label>
<input type="number" name='empId' placeholder='Enter EmpID' class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Name </label>
<input type="text" name='empname' placeholder='Enter Name' class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Address </label>
<input type="text" name='empaddress' placeholder='Enter Address' class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Skills </label>
<input type="text" name='skills' placeholder='Enter Skills' class='form-control'/>
</div>
<div class='form-group'>
<label>Employee Experience </label>
<input type="number" name='Experienceyrs' placeholder='Enter Experience' class='form-control'/>
</div>
 <button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>
<h2 class='text-success'>${msg}</h2> 


</body>
</html>