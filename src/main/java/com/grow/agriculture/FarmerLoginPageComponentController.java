package com.grow.agriculture;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.grow.agriculture.cache.RedisCache;
import com.grow.agriculture.constants.GrowAgricultureConstants;
import com.grow.agriculture.dao.UserDao;
import com.grow.agriculture.dto.User;

@Controller
@RequestMapping(value = "/login")
@PropertySource("classpath:messages.properties")
public class FarmerLoginPageComponentController {
	private static final Logger log = LoggerFactory.getLogger(FarmerLoginPageComponentController.class);

	@Autowired
	private HttpSession httpSession;

	@Autowired
	UserDao userDAO;

	@Value("${farmer.login.background.image.name}")
	private String FARMER_BACKGROUND_IMAGE_NAME;

	@Value("${login.password.wrong.description}")
	private String PASSWORD_WRONG_DESCRIPTION;

	@Value("${login.user.not.exists.description}")
	private String USER_NOTEXISTS_DESCRIPTION;

	@Autowired
	RedisCache cache;

	public static final String VIEW_NAME = "loginPageComponent";
	public static final String DASHBOARD_VIEW_NAME = "dashboardPageComponent";
	public static final String USER_DATA_OBJECT = "user";
	public static final String USER_TYPE = "userType";
	public static final String BACKGROUND_IMAGE = "backgroundImage";
	public static final String USER_TYPE_FARMER_VALUE = "Farmer";
	public static final String USER_TYPE_BUYER_VALUE = "Buyer";
	public static final String ALERT_TEXT = "alertText";
	public static final String ALERT_TYPE = "alertType";

	@RequestMapping(value = "/farmerLogin", method = RequestMethod.GET)
	public ModelAndView displayFarmerLoginPage() {
		return new ModelAndView(VIEW_NAME);
	}

	@RequestMapping(value = "/FarmerLogin", method = RequestMethod.POST)
	public ModelAndView performActionsFarmerLogin(@Valid @ModelAttribute("user") User user, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView(VIEW_NAME);

		log.info("Entered the farmer login post block!!! ");

		User userData = userDAO.get(user.getPhoneNumber());

		if (userData == null) {
			// user not exists or phone number wrong
			modelAndView.addObject(ALERT_TEXT, USER_NOTEXISTS_DESCRIPTION);
			modelAndView.addObject(ALERT_TYPE, GrowAgricultureConstants.ALERT_TYPE_VALUE.get(3));
			return modelAndView;
		}

		if (userData.getPassword().equals(user.getPassword())) {
			//cache.setObject(USER_DATA_OBJECT, userData);
			httpSession.setAttribute(GrowAgricultureConstants.PHONENUMBER, userData.getPhoneNumber());
			return new ModelAndView(DASHBOARD_VIEW_NAME);
		} else {
			modelAndView.addObject(ALERT_TEXT, PASSWORD_WRONG_DESCRIPTION);
			modelAndView.addObject(ALERT_TYPE, GrowAgricultureConstants.ALERT_TYPE_VALUE.get(3));
			return modelAndView;
		}
	}

	@ModelAttribute
	public void defaultModels(Model model) {
		model.addAttribute(USER_DATA_OBJECT, new User());
		model.addAttribute(USER_TYPE, USER_TYPE_FARMER_VALUE);
		model.addAttribute(BACKGROUND_IMAGE, FARMER_BACKGROUND_IMAGE_NAME);
	}

}
