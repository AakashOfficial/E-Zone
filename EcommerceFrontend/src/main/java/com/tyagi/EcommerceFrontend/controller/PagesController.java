package com.tyagi.EcommerceFrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PagesController 
{
	@RequestMapping("/AboutUs")
	public String showAboutUs()
	{
		return "AboutUs";
	}
	
	@RequestMapping("/AfterFeedback")
	public String showAfterFeedback()
	{
		return "AfterFeedback";
	}
	
	@RequestMapping("/getCategoryDetails")
	public String showLoginFailure()
	{
		return "Categories";
	}
	
	@RequestMapping("/ContactUs")
	public String showContact()
	{
		return "ContactUs";
	}
	
	@RequestMapping("/ProductDesc")
	public String showProductdesc()
	{
		return "ProductDesc";
	}
	
	@RequestMapping("/Feedback")
	public String showFeedback()
	{
		return "Feedback";
	}
	
	
	@RequestMapping("/Register")
	public String showSignup()
	{
		return "Register";
	}
	
	@RequestMapping("/Header")
	public String showhead()
	{
		return "Header";
	}
	
	@RequestMapping("/AdminHome")
	public String showadmin()
	{
		return "AdminHome";
	}
	
	@RequestMapping("/UserHome")
	public String showuser()
	{
		return "UserHome";
	}
    
	@RequestMapping("/login")
	public String showLoginPage()
	{
		return "Login";
	}

	@RequestMapping("/perform_logout")
	public String showLogout()
	{
		return "Home";
	}
	
	@RequestMapping("/Home")
	public String showindex()
	{
		return "Home";
	}

	@RequestMapping("/ordercomplete")
	public String showOrderComplete()
	{
		return "OrderComplete";
	}
	
	@RequestMapping("/ProductDescribe")
	public String showProductdescribe()
	{
		return "ProductDescribe";
	}
	
}

