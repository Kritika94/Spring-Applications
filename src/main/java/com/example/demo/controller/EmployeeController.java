package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Employee;
import com.example.demo.repo.EmployeeRepo;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeRepo repo;
	@RequestMapping("/")
public String Home() {
	return "Home";
}
	@RequestMapping("/addEmployee")
	public ModelAndView AddEmployee(Employee employee) {
		repo.save(employee);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Home");
		mv.addObject("msg","EmployeeCreated Add New");
	return mv;	
	}
	
	@RequestMapping(value="/EmployeeDetails")
	public ModelAndView EmployeeDet(Employee employee) {
		ModelAndView mv=new ModelAndView();
		List<Employee> emp=(List<Employee>) repo.findAll();
		System.out.println(emp);
		mv.setViewName("EmployeeDetails");
		
		mv.addObject("result",emp);
		return mv;
	}
	
	@RequestMapping(value="/EmployeeSpecificDetails")
	public String EmployeeSpecificDetails() {
	return "EmployeeSpecificDetails";
	}
	
	@RequestMapping(value="/getEmployee")
	public ModelAndView getEmployee(@RequestParam("empId") int id) {
		Employee emp=repo.findById(id).orElse(new Employee());
		ModelAndView mv=new ModelAndView();
		System.out.println(emp);
		mv.addObject("Result",emp);
		mv.setViewName("EmployeeSpecificDetails");
		return mv;
		}
	@RequestMapping(value="/deleteEmp")
	public ModelAndView deleteEmployee(@RequestParam("empId") int id) {
		repo.deleteById(id);
		ModelAndView mv=new ModelAndView();
		List<Employee> emp=(List<Employee>) repo.findAll();
		System.out.println(emp);
		mv.setViewName("EmployeeDetails");
		
		mv.addObject("result",emp);
		return mv;
}
	@RequestMapping(value="/update")
	public ModelAndView update(@RequestParam("empId") int id, Employee Emp) {
		ModelAndView mv=new ModelAndView();
		Employee emp= repo.findById(id).orElse(new Employee());
		System.out.println(emp);
		mv.setViewName("update");
		
		mv.addObject("result",emp);
		return mv;
}
	
	@RequestMapping(value="/updateEmployee")
	public ModelAndView updateEmployee(Employee Emp) {
		
		ModelAndView mv=new ModelAndView();
		repo.save(Emp);
		List<Employee> emp=(List<Employee>) repo.findAll();
		mv.setViewName("EmployeeDetails");
		mv.addObject("result",emp);
		mv.addObject("msg","Employee Details updated");
		return mv;
}
	
	
	
	
}
