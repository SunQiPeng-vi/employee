package com.ssm.employee.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.employee.pojo.Master;

@Repository
public interface MasterMapper {

	public List<Master> getMastersBycategoryCode(String ccode);
}
