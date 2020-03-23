package com.ssm.employee.pojo;

public class Master {
	private String categoryCode;
	private String code;
	private String name;
	private int displayOrder;
	private String description;
	private String deleteFlag;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	
	public Master() {}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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
		return "Master [categoryCode=" + categoryCode + ", code=" + code + ", name=" + name + ", displayOrder="
				+ displayOrder + ", description=" + description + ", deleteFlag=" + deleteFlag + ", insUserId="
				+ insUserId + ", insTimestamp=" + insTimestamp + ", updUserId=" + updUserId + ", updTimestamp="
				+ updTimestamp + "]";
	}
	
}
