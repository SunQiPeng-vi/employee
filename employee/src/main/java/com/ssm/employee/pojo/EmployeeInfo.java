package com.ssm.employee.pojo;

public class EmployeeInfo {
	private String eid;
	private String mailAddress;
	private String name;
	private String nameCn;
	private String nameKanji;
	private String nameKana;
	private String englishName;
	private String birthday;
	private String gender;
	private String telNo;
	private String mobileNo;
	private String emergencyTelNo;
	private Master location;
	private Master site; //0010
	private String startDate;
	private String endDate;
	private Master work;//在职状态  1090
	private Department department;
	private String managerEid;
	private String managerName;
	private Master type;// 员工种类(HP/BP) 0050
	private Company company;
	private Double yearsAtJanpan;//在日年限
	private String passportFlag;//是否有护照
	private String passportExpireDate;
	private String visaFlag;//是否有签证 0/1
	private Master visaType;
	private String visaExpireDate;
	private Master japanLevel;  //日语水平 1070
	private String reentryLimitedDate;
	private String billableFlag;
	private String managerFlag;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	//所属组织 用于查询时接收。
	private JobInfo jobInfo;
	private RoleInfo role;
	
	
	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public RoleInfo getRole() {
		return role;
	}

	public void setRole(RoleInfo role) {
		this.role = role;
	}

	public JobInfo getJobInfo() {
		return jobInfo;
	}

	public void setJobInfo(JobInfo jobInfo) {
		this.jobInfo = jobInfo;
	}

	public EmployeeInfo() {}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getMailAddress() {
		return mailAddress;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameCn() {
		return nameCn;
	}

	public void setNameCn(String nameCn) {
		this.nameCn = nameCn;
	}

	public String getNameKanji() {
		return nameKanji;
	}

	public void setNameKanji(String nameKanji) {
		this.nameKanji = nameKanji;
	}

	public String getNameKana() {
		return nameKana;
	}

	public void setNameKana(String nameKana) {
		this.nameKana = nameKana;
	}

	public String getEnglishName() {
		return englishName;
	}

	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTelNo() {
		return telNo;
	}

	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEmergencyTelNo() {
		return emergencyTelNo;
	}

	public void setEmergencyTelNo(String emergencyTelNo) {
		this.emergencyTelNo = emergencyTelNo;
	}

	public Master getLocation() {
		return location;
	}

	public void setLocation(Master location) {
		this.location = location;
	}

	public Master getSite() {
		return site;
	}

	public void setSite(Master site) {
		this.site = site;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Master getWork() {
		return work;
	}

	public void setWork(Master work) {
		this.work = work;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getManagerEid() {
		return managerEid;
	}

	public void setManagerEid(String managerEid) {
		this.managerEid = managerEid;
	}

	public Master getType() {
		return type;
	}

	public void setType(Master type) {
		this.type = type;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Double getYearsAtJanpan() {
		return yearsAtJanpan;
	}

	public void setYearsAtJanpan(Double yearsAtJanpan) {
		this.yearsAtJanpan = yearsAtJanpan;
	}

	public String getPassportFlag() {
		return passportFlag;
	}

	public void setPassportFlag(String passportFlag) {
		this.passportFlag = passportFlag;
	}

	public String getPassportExpireDate() {
		return passportExpireDate;
	}

	public void setPassportExpireDate(String passportExpireDate) {
		this.passportExpireDate = passportExpireDate;
	}

	public String getVisaFlag() {
		return visaFlag;
	}

	public void setVisaFlag(String visaFlag) {
		this.visaFlag = visaFlag;
	}

	public Master getVisaType() {
		return visaType;
	}

	public void setVisaType(Master visaType) {
		this.visaType = visaType;
	}

	public String getVisaExpireDate() {
		return visaExpireDate;
	}

	public void setVisaExpireDate(String visaExpireDate) {
		this.visaExpireDate = visaExpireDate;
	}

	public Master getJapanLevel() {
		return japanLevel;
	}

	public void setJapanLevel(Master japanLevel) {
		this.japanLevel = japanLevel;
	}

	public String getReentryLimitedDate() {
		return reentryLimitedDate;
	}

	public void setReentryLimitedDate(String reentryLimitedDate) {
		this.reentryLimitedDate = reentryLimitedDate;
	}

	public String getBillableFlag() {
		return billableFlag;
	}

	public void setBillableFlag(String billableFlag) {
		this.billableFlag = billableFlag;
	}

	public String getManagerFlag() {
		return managerFlag;
	}

	public void setManagerFlag(String managerFlag) {
		this.managerFlag = managerFlag;
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
		return "EmployeeInfo [eid=" + eid + ", mailAddress=" + mailAddress
				+ ", name=" + name + ", nameCn=" + nameCn + ", nameKanji="
				+ nameKanji + ", nameKana=" + nameKana + ", englishName="
				+ englishName + ", birthday=" + birthday + ", gender=" + gender
				+ ", telNo=" + telNo + ", mobileNo=" + mobileNo
				+ ", emergencyTelNo=" + emergencyTelNo + ", location="
				+ location + ", site=" + site + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", work=" + work + ", department="
				+ department + ", managerEid=" + managerEid + ", managerName="
				+ managerName + ", type=" + type + ", company=" + company
				+ ", yearsAtJanpan=" + yearsAtJanpan + ", passportFlag="
				+ passportFlag + ", passportExpireDate=" + passportExpireDate
				+ ", visaFlag=" + visaFlag + ", visaType=" + visaType
				+ ", visaExpireDate=" + visaExpireDate + ", japanLevel="
				+ japanLevel + ", reentryLimitedDate=" + reentryLimitedDate
				+ ", billableFlag=" + billableFlag + ", managerFlag="
				+ managerFlag + ", insUserId=" + insUserId + ", insTimestamp="
				+ insTimestamp + ", updUserId=" + updUserId + ", updTimestamp="
				+ updTimestamp + ", jobInfo=" + jobInfo + ", role=" + role
				+ "]";
	}
	
	
}
