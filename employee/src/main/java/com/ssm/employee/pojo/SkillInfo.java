package com.ssm.employee.pojo;

public class SkillInfo {
	private String eid;
	private Master skill;
	private Master skillLevel;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	@Override
	public String toString() {
		return "SkillInfo [eid=" + eid + ", skill=" + skill + ", skillLevel="
				+ skillLevel + ", insUserId=" + insUserId + ", insTimestamp="
				+ insTimestamp + ", updUserId=" + updUserId + ", updTimestamp="
				+ updTimestamp + "]";
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public Master getSkill() {
		return skill;
	}
	public void setSkill(Master skill) {
		this.skill = skill;
	}
	public Master getSkillLevel() {
		return skillLevel;
	}
	public void setSkillLevel(Master skillLevel) {
		this.skillLevel = skillLevel;
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

}
