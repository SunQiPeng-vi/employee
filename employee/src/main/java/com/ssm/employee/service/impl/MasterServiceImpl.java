package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.employee.dao.MasterMapper;
import com.ssm.employee.pojo.Master;
import com.ssm.employee.service.MasterService;
@Service
public class MasterServiceImpl implements MasterService {
	@Autowired
	private MasterMapper masterMapper;	
	
	public void setMasterMapper(MasterMapper masterMapper) {
		this.masterMapper = masterMapper;
	}


	@Override
	public List<Master> getMastersBycategoryCode(String ccode) {
		return masterMapper.getMastersBycategoryCode(ccode);
	}

}
