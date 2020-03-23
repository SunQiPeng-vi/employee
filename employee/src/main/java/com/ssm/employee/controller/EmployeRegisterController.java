package com.ssm.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployeRegisterController {
	
	@RequestMapping("/empRegister")
	public String toRegister() {
		return "employeRegister";
	}
}
