package com.grow.agriculture;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LandingPageComponentController {
	
	
	private static final Logger log = LoggerFactory.getLogger(LandingPageComponentController.class);
	private static final String VIEW_NAME =	"landingPageComponent";
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return VIEW_NAME;
	}
}	
