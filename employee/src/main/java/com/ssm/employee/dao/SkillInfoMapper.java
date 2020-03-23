package com.ssm.employee.dao;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.ssm.employee.pojo.SkillInfo;


@Repository
public interface SkillInfoMapper {

	public List<SkillInfo> getSkillsByEid(String eid);
}
