package com.services;

import com.beans.Employee;
import com.impl.MyException;


public interface EmployeeDao 
{
 
 public void addEmployee(Employee employee)throws MyException;

}
