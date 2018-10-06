package com.java.ex.controller;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.ex.model.Employee;


@Controller
@Repository
@EnableTransactionManagement
public class EmployeeController {
	
	@Autowired
	private SessionFactory sessionFactory;

@RequestMapping(value="/save",method = RequestMethod.POST)
    @Transactional
	public ModelAndView save(@ModelAttribute("emp") Employee emp){
//		Employee empfromDB = (Employee) sessionFactory.getCurrentSession().get(
//                Employee.class, emp.getFirstName());
//		if(empfromDB == null) {
		System.out.println(emp.getEmpid()+" "+emp.getFirstName()+" "+emp.getLastName()+" "+emp.getDateOfBirth()+" "+emp.getGender()+" "+emp.getSalary());
       sessionFactory.getCurrentSession().saveOrUpdate(emp);
	return new ModelAndView("showEmployee", "command", emp);
		}
//else {
//	return new ModelAndView("error");
//	}
//	}
	
	
	@RequestMapping(value = "/viewemp",method = RequestMethod.POST)
    @Transactional
    public ModelAndView retreiveContact(HttpServletRequest request) {
		System.out.println("Inside viewemp");
        int empid = Integer.parseInt(request.getParameter("empid"));
        Employee emp = (Employee) sessionFactory.getCurrentSession().get(
                Employee.class, empid);
        System.out.println(emp.getEmpid()+"......"+emp.getFirstName()+"......"+emp.getLastName()+"......"+emp.getGender()+"......"+emp.getSalary());
		return new ModelAndView("showEmployee", "command", emp);
    }
	
		
	@RequestMapping(value="/showRegistration",method = RequestMethod.POST)
	public ModelAndView showRegistration(@ModelAttribute("emp") Employee emp){
		return new ModelAndView("showRegistration");
	}
	
	 public void setSessionFactory(SessionFactory sessionFactory) {
	        this.sessionFactory = sessionFactory;
	    }
}

