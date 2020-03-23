package com.ssm.employee.pojo;

public class Company {
	private String id;
	private String name;
	private String telNo;
	private String address;
	private String zip;
	private String deleteFlag;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
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
		return "Company [id=" + id + ", name=" + name + ", telNo=" + telNo
				+ ", address=" + address + ", zip=" + zip + ", deleteFlag="
				+ deleteFlag + ", insUserId=" + insUserId + ", insTimestamp="
				+ insTimestamp + ", updUserId=" + updUserId + ", updTimestamp="
				+ updTimestamp + "]";
	}
	
}
