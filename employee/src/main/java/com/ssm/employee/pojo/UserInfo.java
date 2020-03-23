package com.ssm.employee.pojo;

import java.io.Serializable;

public class UserInfo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String eid;
	private String deleteFlag;
	private String insUserid;
	private String insTimestamp;
	private String updUserid;
	private String updTimestamp;
	private String jobCode;//rolecode 
	private String jobName;//rolename 直属经理 人力资源经理 一般员工 系统管理员
	
	public String getJobCode() {
		return jobCode;
	}

	public void setJobCode(String jobCode) {
		this.jobCode = jobCode;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public UserInfo() {}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public String getInsUserid() {
		return insUserid;
	}

	public void setInsUserid(String insUserid) {
		this.insUserid = insUserid;
	}

	public String getInsTimestamp() {
		return insTimestamp;
	}

	public void setInsTimestamp(String insTimestamp) {
		this.insTimestamp = insTimestamp;
	}

	public String getUpdUserid() {
		return updUserid;
	}

	public void setUpdUserid(String updUserid) {
		this.updUserid = updUserid;
	}

	public String getUpdTimestamp() {
		return updTimestamp;
	}

	public void setUpdTimestamp(String updTimestamp) {
		this.updTimestamp = updTimestamp;
	}

	@Override
	public String toString() {
		return "UserInfo [username=" + username + ", password=" + password
				+ ", eid=" + eid + ", deleteFlag=" + deleteFlag
				+ ", insUserid=" + insUserid + ", insTimestamp=" + insTimestamp
				+ ", updUserid=" + updUserid + ", updTimestamp=" + updTimestamp
				+ ", jobCode=" + jobCode + ", jobName=" + jobName + "]";
	}
	
	
	
	
}
