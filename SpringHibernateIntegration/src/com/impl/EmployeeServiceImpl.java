package com.impl;
import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.services.EmployeeDao;
import com.services.EmployeeService;
import com.beans.Employee;


public class EmployeeServiceImpl implements EmployeeService 
{

 private EmployeeDao employeeDao;
 
 public void setEmployeeDao(EmployeeDao employeeDao)
 {
	this.employeeDao = employeeDao;
}
@Transactional(propagation = Propagation.REQUIRED,rollbackFor=MyException.class,readOnly = false)
 public void addEmployee(List<Employee> employeelist)
 {	
	for (Employee employee : employeelist) {
		try{
		
		employeeDao.addEmployee(employee);
		}
		catch(MyException e)
		{	
			System.out.println(e.getMessage());
		}
	}
}
}