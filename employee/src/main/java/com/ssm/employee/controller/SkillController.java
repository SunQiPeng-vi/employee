package com.ssm.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.employee.pojo.Master;
import com.ssm.employee.pojo.SkillInfo;
import com.ssm.employee.service.MasterService;
import com.ssm.employee.service.SkillInfoService;

@Controller
public class SkillController {

	@Autowired
	private MasterService masterService;


	public void setMasterService(MasterService masterService) {
		this.masterService = masterService;
	}



	@RequestMapping("/skillUpdate")
	public String toSkill(Model model) {
		List<Master> skills = masterService.getMastersBycategoryCode("1100");
		List<Master> levels = masterService.getMastersBycategoryCode("1110");
		model.addAttribute("allSkills", skills);
		model.addAttribute("allLevels", levels);
		return "skillUpdate";
	}
}
