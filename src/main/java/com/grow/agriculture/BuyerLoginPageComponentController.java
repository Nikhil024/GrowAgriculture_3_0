/*package com.grow.agriculture;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.grow.agriculture.dao.UserDao;
import com.grow.agriculture.dto.User;

@Controller
@RequestMapping(value = "/login")
@PropertySource("classpath:messages.properties")
public class BuyerLoginPageComponentController {
	private static final Logger log = LoggerFactory.getLogger(BuyerLoginPageComponentController.class);
	
	@Autowired
	UserDao userDAO;
	
	@Value("${farmer.login.background.image.name}")
	private String FARMER_BACKGROUND_IMAGE_NAME; 
	
	public static final String VIEW_NAME = "loginPageComponent";
	public static final String USER_MODEL_ATTRIBUTE = "user";
	public static final String USER_TYPE = "userType";
	public static final String BACKGROUND_IMAGE = "backgroundImage";
	public static final String USER_TYPE_FARMER_VALUE = "Farmer";
	public static final String USER_TYPE_BUYER_VALUE = "Buyer";
	
	@RequestMapping(value = "/farmerLogin", method = RequestMethod.GET)
	public ModelAndView displayFarmerLoginPage(){
		ModelAndView modelAndView = new ModelAndView(VIEW_NAME);
		
		modelAndView.addObject(USER_MODEL_ATTRIBUTE, new User());
		modelAndView.addObject(USER_TYPE, USER_TYPE_FARMER_VALUE);
		modelAndView.addObject(BACKGROUND_IMAGE, FARMER_BACKGROUND_IMAGE_NAME);
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/farmerLogin", method = RequestMethod.POST)
	public ModelAndView performActionsFarmerLogin(@Valid @ModelAttribute("user") User user,BindingResult result){
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("","");
		
		return modelAndView;
	}
	
	
	
	

}
*/