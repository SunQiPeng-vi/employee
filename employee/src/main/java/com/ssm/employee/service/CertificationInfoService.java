package com.ssm.employee.service;

import java.util.List;

import com.ssm.employee.pojo.CertificationInfo;

public interface CertificationInfoService {
	public List<CertificationInfo> getCertificationInfoByEid(String eid);
}
