package com.ssm.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.employee.dao.CertificationInfoMapper;
import com.ssm.employee.pojo.CertificationInfo;
import com.ssm.employee.service.CertificationInfoService;
@Service
public class CertificationInfoServiceImpl implements CertificationInfoService {

	@Autowired
	private CertificationInfoMapper  certificationInfoMapper;	
	

	public void setCertificationInfoMapper(CertificationInfoMapper certificationInfoMapper) {
		this.certificationInfoMapper = certificationInfoMapper;
	}

	@Override
	public List<CertificationInfo> getCertificationInfoByEid(String eid) {
		// TODO Auto-generated method stub
		return certificationInfoMapper.getCertificationInfoByEid(eid);
	}

}
