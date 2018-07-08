package com.impl;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.beans.Employee;
import com.services.EmployeeDao;

@Repository("employeeDao")
public class EmployeeDaoImpl  implements EmployeeDao
{
	HibernateTemplate hibernateTemplate;

public void setHibernateTemplate(HibernateTemplate hibernateTemplate)
{
		this.hibernateTemplate = hibernateTemplate;
	}

@Override
public void addEmployee(Employee employee)throws MyException
{
	if(employee.getEmpAge()<25)
	{
		throw new MyException();
	}
	hibernateTemplate.save(employee);
	
}

}
