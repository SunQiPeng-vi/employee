package com.ssm.employee.pojo;

public class CertificationInfo {
	private String eid;
	private Master certification;
	private String certifiedDate;
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
	public Master getCertification() {
		return certification;
	}
	public void setCertification(Master certification) {
		this.certification = certification;
	}
	public String getCertifiedDate() {
		return certifiedDate;
	}
	public void setCertifiedDate(String certifiedDate) {
		this.certifiedDate = certifiedDate;
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
		return "CertificationInfo [eid=" + eid + ", certification="
				+ certification + ", certifiedDate=" + certifiedDate
				+ ", insUserId=" + insUserId + ", insTimestamp=" + insTimestamp
				+ ", updUserId=" + updUserId + ", updTimestamp=" + updTimestamp
				+ "]";
	}
	
}
