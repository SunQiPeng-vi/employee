package com.ssm.employee.dao;

import java.util.List;



import org.springframework.stereotype.Repository;

import com.ssm.employee.pojo.CertificationInfo;

@Repository
public interface CertificationInfoMapper {
	
	public List<CertificationInfo> getCertificationInfoByEid(String eid);
}
