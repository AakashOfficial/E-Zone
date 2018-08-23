package com.tyagi.EcommerceFrontend.controller;

import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.tyagi.EcommerceBackend.dao.CartDAO;
import com.tyagi.EcommerceBackend.dao.ProductDAO;
import com.tyagi.EcommerceBackend.dao.UserDAO;
import com.tyagi.EcommerceBackend.model.Product;
import com.tyagi.EcommerceBackend.model.UserRegister;

@Controller
public class UserController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CartDAO cartDAO;
	
@RequestMapping("/login_success")
	public String loginSuccess(HttpSession session, Model m) {
		
		String page = null;
		boolean loggedIn = true;
		// Retrieving the username;
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username", username);
		session.setAttribute("loggedIn", loggedIn);
		
		// Retrieving the role
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();

		for (GrantedAuthority role : authorities)
		{
			System.out.println("Role:" + role.getAuthority() + "UserName:" + username);
			if (role.getAuthority().equals("ROLE_ADMIN"))
			{
				List<Product> prodlist = productDAO.getProductDetails();
				m.addAttribute("prodlist", prodlist);
				page = "AdminHome";
			} 
			else
			{
				@SuppressWarnings("rawtypes")
				List<Product> prodlist = productDAO.getProductDetails();
				m.addAttribute("prodlist", prodlist);
				page = "UserHome";
			}
			System.out.println("Login Successfull");
		}
		return page;	
	}

	@RequestMapping(value ="/InsertUserRegister",method=RequestMethod.POST)
	public String insertUserRegister(@ModelAttribute("userRegister") UserRegister userRegister, Model m) {
		System.out.println("---UserRegister Inserting---");
		userDAO.insertUpdateUser(userRegister);

		List<UserRegister> userlist=userDAO.getUserDetails();
		m.addAttribute("userlist", userlist);
		System.out.println("---UserRegister Inserted--");
		return "Login";
	}
	
	 @RequestMapping("/perform_logout")
	    public class SignOutController {

	      @RequestMapping(method=RequestMethod.GET)
	      public String logout(HttpSession session) {
	        session.invalidate();
	        return "Home";
	      }
	    }
	
	 @RequestMapping("/LoginFailure")
		public String showLoginFailure()
		{
			return "LoginFailure";
		}
}
