package com.ssm.employee.service;

import java.util.List;

import com.ssm.employee.pojo.Master;

public interface MasterService {
	public List<Master> getMastersBycategoryCode(String ccode);
}
