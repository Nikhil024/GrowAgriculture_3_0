package com.grow.agriculture;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.grow.agriculture.dto.User;

@Controller
public class RegisterPageComponentController {
	private static final Logger log = LoggerFactory.getLogger(RegisterPageComponentController.class);
	private static final String VIEW_NAME ="registerPageComponent";
	private static final String USER_REGISTER = "userRegister";
	
	
	@RequestMapping(value = "/farmerRegister",method=RequestMethod.GET)
	public ModelAndView farmerRegisterGetMethod(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView(VIEW_NAME);
		User user = new User();
		user.setRole("farmer");
		mav.addObject("user",user);
		mav.addObject(USER_REGISTER, request.getServletPath());
		return mav;
	}
	
	/*@RequestMapping(value = "/register", method=RequestMethod.POST)
	public ModelAndView farmerRegisterPostMethod(@Valid @ModelAttribute("user") User user,BindingResult result) {
		if(result.hasErrors()) {
			log.info("Has error");
		}
		ModelAndView mav = new ModelAndView(VIEW_NAME);
		log.info(user.toString());
		return mav;
	}*/
	
	
	
}
