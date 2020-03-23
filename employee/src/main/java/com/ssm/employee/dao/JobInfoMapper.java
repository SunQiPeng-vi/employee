package com.ssm.employee.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.employee.pojo.JobInfo;


@Repository
public interface JobInfoMapper {

	public List<JobInfo> getJobInfoByEid(String eid);
}
