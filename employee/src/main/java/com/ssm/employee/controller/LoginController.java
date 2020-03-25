package com.ssm.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ssm.employee.pojo.UserInfo;
import com.ssm.employee.service.UserInfoService;

@Controller
@SessionAttributes({"user"})
public class LoginController {
	@Autowired
	private UserInfoService userInfoService;	
	
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	@ResponseBody
	public UserInfo  login(String username,String password,
			             Model model) {
		System.out.println(username);
		System.out.println(password);
		UserInfo userInfo = userInfoService.getUserByLogin(username, password);
		if(userInfo != null) {
			model.addAttribute("user", userInfo);
			return userInfo;
		}else {
			return null;
		}		
	}
	
	@RequestMapping(value="/mainmenu")
	public String login() {
		return "mainmenu";
	}
}
