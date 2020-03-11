<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.demo.model.Employee" %>
       <%@ page import="java.util.*" %>
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
<div class="container">
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
   <%
   
 List<Employee> emp=(ArrayList<Employee>)request.getAttribute("result");

 for(int i=0;i<emp.size();i++){
	 out.println("<tr>");
	 out.println("<td>"+emp.get(i).getEmpId()+"</td>");
	 out.println("<td>"+emp.get(i).getEmpname()+"</td>");
	 out.println("<td>"+emp.get(i).getEmpaddress()+"</td>");
	 out.println("<td>"+emp.get(i).getExperienceyrs()+"</td>");
	 out.println("<td>"+emp.get(i).getSkills()+"</td>");
	 out.println("<td><button class='btn btn-danger'><a href='deleteEmp?empId="+emp.get(i).getEmpId()+"' style='text-decoration:none; color: white'>Delete</a></td>");
	 out.println("<td><button class='btn btn-danger'><a href='update?empId="+emp.get(i).getEmpId()+"' style='text-decoration:none; color: white'>update</a></td>");
	 out.println("</tr>");
 }
 
 
 
 
 %>      
 </tbody>
 </table>
 
 
 
  </div>
<center><h2 class='text-success'>${msg}</h2></center>
</body>
</html>