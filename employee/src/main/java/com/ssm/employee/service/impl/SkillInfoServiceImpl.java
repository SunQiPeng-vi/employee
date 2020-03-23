package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ssm.employee.dao.SkillInfoMapper;
import com.ssm.employee.pojo.SkillInfo;
import com.ssm.employee.service.SkillInfoService;

@Service
public class SkillInfoServiceImpl  implements SkillInfoService{

	@Autowired
	private SkillInfoMapper skillInfoMapper;	
	

	public void setJobInfoMapper(SkillInfoMapper skillInfoMapper) {
		this.skillInfoMapper = skillInfoMapper;
	}


	@Override
	public List<SkillInfo> getSkillsByEid(String eid) {
		// TODO Auto-generated method stub
		return skillInfoMapper.getSkillsByEid(eid);
	}

}
