package com.grow.agriculture;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParser;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

@Controller
public class OtpComponentController {
	private static final Logger log = LoggerFactory.getLogger(OtpComponentController.class);

	@RequestMapping(value = "/sendOtp", method = RequestMethod.POST)
	@ResponseBody
	public List<String> sendOTP(@RequestParam("phoneNumber") String phoneNumber) throws UnirestException {
		List<String> jsonList = new ArrayList<String>();

		 HttpResponse<JsonNode> response = Unirest.get(
		  "http://2factor.in/API/V1/c9e7df63-4ab4-11e7-94da-0200cd936042/SMS/"+
		  phoneNumber+"/AUTOGEN") .header("content-type",
		  "application/x-www-form-urlencoded") .asJson();
		  
		  JSONObject jsonObject = response.getBody().getObject(); String status
		  = jsonObject.getString("Status"); String details =
		  jsonObject.getString("Details");
		 

		/*String status = "error";
		String details = "abc";
		 */
		jsonList.add(status);
		jsonList.add(details);
		return jsonList;
	}

	@RequestMapping(value = "/checkOtp", method = RequestMethod.POST)
	@ResponseBody
	public List<String> checkOTP(@RequestParam("otpValue") String otpValue, @RequestParam("sessionID") String sessionID)
			throws UnirestException {
		List<String> jsonList = new ArrayList<String>();

		
		 HttpResponse<JsonNode> response = Unirest.get(
		  "http://2factor.in/API/V1/c9e7df63-4ab4-11e7-94da-0200cd936042/SMS/VERIFY/"
		  +sessionID+"/"+otpValue) .header("content-type",
		  "application/x-www-form-urlencoded") .asJson();
		  
		  JSONObject jsonObject = response.getBody().getObject(); String status
		  = jsonObject.getString("Status"); String details =
		  jsonObject.getString("Details");
		 

		/*log.info(otpValue + " ::: " + sessionID);
		String status = null;
		String details = null;
		if (otpValue.equals("1234")) {
			status = "success";
			details = "OTP Matched";
		} else {
			status = "error";
			details = "Not Matched";
		}*/
		jsonList.add(status);
		jsonList.add(details);
		return jsonList;
	}

}
