package com.ssm.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String login(@RequestParam("UID")String uname, @RequestParam("pass")String upwd,
			             Model model) {
		UserInfo userInfo = userInfoService.getUserByLogin(uname, upwd);
		if(userInfo != null) {
			model.addAttribute("user", userInfo);
			return "mainmenu";
		}else {
			return "redirect:/login_e.jsp";
		}
		
	}
}
