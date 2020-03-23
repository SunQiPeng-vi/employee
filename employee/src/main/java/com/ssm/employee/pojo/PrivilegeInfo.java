package com.ssm.employee.pojo;

public class PrivilegeInfo {
	private Master role;
	private Master privilege;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	public Master getRole() {
		return role;
	}
	public void setRole(Master role) {
		this.role = role;
	}
	public Master getPrivilege() {
		return privilege;
	}
	public void setPrivilege(Master privilege) {
		this.privilege = privilege;
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
		return "PrivilegeInfo [role=" + role + ", privilege=" + privilege
				+ ", insUserId=" + insUserId + ", insTimestamp=" + insTimestamp
				+ ", updUserId=" + updUserId + ", updTimestamp=" + updTimestamp
				+ "]";
	}
	
}
