package com.ssm.employee.service;

import java.util.List;


import com.ssm.employee.pojo.SkillInfo;

public interface SkillInfoService {
	public List<SkillInfo> getSkillsByEid(String eid);
}
