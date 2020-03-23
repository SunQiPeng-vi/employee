package com.ssm.employee.pojo;

public class JobInfo {
	private String eid;
	private Master jobTitle;//GDCC  1010
	private Master jobLevel;
	private Master deliveryCapability;//Delivery  1040
	private Master jobPosition;//JDDC  1050 
	private Master confirmStatus;//ÉóÅú×´Ì¬  0060
	private String rejectReason;
	private String insUserid;
	private String insTimestamp;
	private String updUserid;
	private String updTimestamp;
	
	public JobInfo() {}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	
	public Master getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(Master jobTitle) {
		this.jobTitle = jobTitle;
	}

	public Master getJobLevel() {
		return jobLevel;
	}

	public void setJobLevel(Master jobLevel) {
		this.jobLevel = jobLevel;
	}

	public Master getDeliveryCapability() {
		return deliveryCapability;
	}

	public void setDeliveryCapability(Master deliveryCapability) {
		this.deliveryCapability = deliveryCapability;
	}

	public Master getJobPosition() {
		return jobPosition;
	}

	public void setJobPosition(Master jobPosition) {
		this.jobPosition = jobPosition;
	}

	public Master getConfirmStatus() {
		return confirmStatus;
	}

	public void setConfirmStatus(Master confirmStatus) {
		this.confirmStatus = confirmStatus;
	}

	public String getRejectReason() {
		return rejectReason;
	}

	public void setRejectReason(String rejectReason) {
		this.rejectReason = rejectReason;
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
		return "JobInfo [eid=" + eid + ", jobTitle=" + jobTitle + ", jobLevel="
				+ jobLevel + ", deliveryCapability=" + deliveryCapability
				+ ", jobPosition=" + jobPosition + ", confirmStatus="
				+ confirmStatus + ", rejectReason=" + rejectReason
				+ ", insUserid=" + insUserid + ", insTimestamp=" + insTimestamp
				+ ", updUserid=" + updUserid + ", updTimestamp=" + updTimestamp
				+ "]";
	}


	
	
}
