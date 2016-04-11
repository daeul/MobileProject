package com.mobile.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mobile.app.dto.member.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	/**
	 * login
	 */
	
	@RequestMapping(value = "/login.do", method =  RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "/login-proc.do")
	public String loginProc(Member member) {
		
		return "";
	}
	
}
