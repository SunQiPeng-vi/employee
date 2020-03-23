package com.ssm.employee.pojo;

public class RoleInfo {
	private String eid;
	private Master role;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}

	public Master getRole() {
		return role;
	}
	public void setRole(Master role) {
		this.role = role;
	}
	public String getInsUserId() {
		return insUserId;
	}
	public void setInsUserId(String insUserId) {
		this.insUserId = insUserId;
	}
	public String getInsTimestamp() {
		return insTimestamp;
	}
	public void setInsTimestamp(String insTimestamp) {
		this.insTimestamp = insTimestamp;
	}
	public String getUpdUserId() {
		return updUserId;
	}
	public void setUpdUserId(String updUserId) {
		this.updUserId = updUserId;
	}
	public String getUpdTimestamp() {
		return updTimestamp;
	}
	public void setUpdTimestamp(String updTimestamp) {
		this.updTimestamp = updTimestamp;
	}
	@Override
	public String toString() {
		return "RoleInfo [eid=" + eid + ", role=" + role + ", insUserId="
				+ insUserId + ", insTimestamp=" + insTimestamp + ", updUserId="
				+ updUserId + ", updTimestamp=" + updTimestamp + "]";
	}
	
}
