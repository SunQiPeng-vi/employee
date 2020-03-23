package com.ssm.employee.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageInfo;
import com.ssm.employee.pojo.CertificationInfo;
import com.ssm.employee.pojo.Company;
import com.ssm.employee.pojo.Department;
import com.ssm.employee.pojo.EmployeeInfo;
import com.ssm.employee.pojo.JobInfo;
import com.ssm.employee.pojo.Master;
import com.ssm.employee.pojo.SkillInfo;
import com.ssm.employee.service.CertificationInfoService;
import com.ssm.employee.service.CompanyService;
import com.ssm.employee.service.DepartmentService;
import com.ssm.employee.service.EmployeeInfoService;
import com.ssm.employee.service.JobInfoService;
import com.ssm.employee.service.MasterService;
import com.ssm.employee.service.SkillInfoService;

@Controller
@SessionAttributes({"mapInfo"})
public class EmployeeQueryController {
	@Autowired
	private MasterService masterService;	
	@Autowired
	private CompanyService companyService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private EmployeeInfoService employeeInfoService;
	@Autowired
	private JobInfoService jobInfoService;
	@Autowired
	private CertificationInfoService certificationInfoService;
	@Autowired
	private SkillInfoService skillInfoService;
	
	public void setSkillInfoService(SkillInfoService skillInfoService) {
		this.skillInfoService = skillInfoService;
	}
	public void setCertificationInfoService(
			CertificationInfoService certificationInfoService) {
		this.certificationInfoService = certificationInfoService;
	}
	public void setDepartmentService(DepartmentService departmentService) {
		this.departmentService = departmentService;
	}
	public void setMasterService(MasterService masterService) {
		this.masterService = masterService;
	}
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}
	public void setEmployeeInfoService(EmployeeInfoService employeeInfoService) {
		this.employeeInfoService = employeeInfoService;
	}
	public void setJobInfoService(JobInfoService jobInfoService) {
		this.jobInfoService = jobInfoService;
	}

	//查看eid的详情
	@RequestMapping("/empByeid")
	public String getEmpByEid(String eid, Model model) {
		System.out.println("\t"+eid);
		EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
		System.out.println(emp);
		model.addAttribute("emp",emp);
		List<JobInfo> jobs = jobInfoService.getJobInfoByEid(eid);
		for(JobInfo job:jobs){
			System.out.println(job);
		}
		model.addAttribute("jobs",jobs);
		List<CertificationInfo> certifications= certificationInfoService.getCertificationInfoByEid(eid);
		for(CertificationInfo certification:certifications){
			System.out.println(certification);
		}
		model.addAttribute("certifications",certifications);
		List<SkillInfo> skills=skillInfoService.getSkillsByEid(eid);
		for(SkillInfo skill:skills){
			System.out.println(skill);
		}
		model.addAttribute("skills",skills);
		
		return "employeReferto1";
	}
	
	//更新eid的详情
	@RequestMapping("/empupdateByeid")
	public String updateEmpByEid(String eid, Model model) {
		System.out.println("\t"+eid);
		//员工个人信息
		EmployeeInfo emp = employeeInfoService.findEmpByEid(eid);
		System.out.println(emp);
		model.addAttribute("emp",emp);
		//所有直属经理信息
		List<EmployeeInfo> managers = employeeInfoService.findAllManager();
		model.addAttribute("managers",managers);
		//所有locationcode
		List<Master> locations  = masterService.getMastersBycategoryCode("0020");  
		model.addAttribute("locations",locations);
		//site 
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		model.addAttribute("sites",siteList);
		//部门
		List<Department> departmentList=departmentService.getAllDepartments();
		model.addAttribute("departments",departmentList);
		//种类
		List<Master> typeList = masterService.getMastersBycategoryCode("0050");
		model.addAttribute("types",typeList);
		//公司
		List<Company> companyList=companyService.getAllCompanies();
		model.addAttribute("companys",companyList);
		//在职状态
		List<Master> workList = masterService.getMastersBycategoryCode("1090");
		model.addAttribute("works",workList);	
		// 日语水平
		List<Master> japaneseList = masterService.getMastersBycategoryCode("1070");
		model.addAttribute("japanese", japaneseList);
		//签证种类
		List<Master> visas = masterService.getMastersBycategoryCode("1080");  
		model.addAttribute("visas", visas);
		//job信息
		List<JobInfo> jobs = jobInfoService.getJobInfoByEid(eid);
		model.addAttribute("jobs", jobs);
		//job的下拉菜单内容查询
		List<Master> jobTitleList = masterService.getMastersBycategoryCode("1010");
		List<Master> deliveryList = masterService.getMastersBycategoryCode("1040");
		List<Master> jdbcTitleList = masterService.getMastersBycategoryCode("1050");
		model.addAttribute("titles", jobTitleList);
		model.addAttribute("deliverys", deliveryList);
		model.addAttribute("jdbcs", jdbcTitleList);
		
		
		List<CertificationInfo> certifications= certificationInfoService.getCertificationInfoByEid(eid);
		for(CertificationInfo certification:certifications){
			System.out.println(certification);
		}
		model.addAttribute("certifications",certifications);
		
		
		List<SkillInfo> skills=skillInfoService.getSkillsByEid(eid);
		for(SkillInfo skill:skills){
			System.out.println(skill);
		}
		model.addAttribute("skills",skills);
		
		
		return "employeeUpate";
	}
	
	@RequestMapping("/pageEmp")//翻页，实现分页
	public String pageEmp(HttpSession session, int pagenum, Model model) {
		Map<String, Object> map = (Map<String, Object>)session.getAttribute("mapInfo");
		PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map, pagenum);
		model.addAttribute("page", page);
		return "employeDetail";
	}
	
	@RequestMapping(value="/findEmp", method= {RequestMethod.POST, RequestMethod.GET})
	public String findEmp(EmployeeInfo emp, HttpServletRequest request, Model model) {
		Map<String , Object> map = new HashMap<>();
		map.put("emp", emp);
		map.put("startDateFrom", request.getParameter("startDateFrom"));
		map.put("startDateTo", request.getParameter("startDateTo"));
		map.put("endDateFrom", request.getParameter("endDateFrom"));
		map.put("endDateTo", request.getParameter("endDateTo"));
		map.put("skillCode", request.getParameter("skillCode"));
		map.put("skillLevelCode", request.getParameter("skillLevelCode"));
		map.put("certificationCode", request.getParameter("certificationCode"));
		
		PageInfo<EmployeeInfo> page = employeeInfoService.findEmps(map,1);
		page.setPageNum(9);
		for(EmployeeInfo e : page.getList()) {
			System.out.println("\t"+e);
		}
		System.out.println(page.getTotal());
		System.out.println(page.getPageNum());
		System.out.println(page.getPageSize());
		System.out.println(page.getPages());
		System.out.println(page.isIsFirstPage());
		System.out.println(page.isIsLastPage());
		System.out.println(page.getPrePage());
		System.out.println(page.getNextPage());
		System.out.println(page.getStartRow());
		System.out.println(page.getEndRow());
		if(page.getList().size()>0) {
			model.addAttribute("page", page);
			//在session中保存查询条件 model默认保存到request，所以需要@SessionAttributes({""})
			model.addAttribute("mapInfo", map);
			return "employeDetail";
		}else {
			return "queryResult0";
		}
	}
	
	@RequestMapping("/employeQuery")
	public String showQuery(HttpSession session) {
		
		List<Master> typeList = masterService.getMastersBycategoryCode("0050");  
		session.setAttribute("types", typeList);
		List<Master> siteList = masterService.getMastersBycategoryCode("0010");
		session.setAttribute("sites", siteList);
		List<Master> workList = masterService.getMastersBycategoryCode("1090");
		session.setAttribute("works", workList);
		List<Master> japaneseList = masterService.getMastersBycategoryCode("1070");
		session.setAttribute("japanese", japaneseList);
		List<Master> jinengList = masterService.getMastersBycategoryCode("1100");
		session.setAttribute("jineng", jinengList);
		List<Master> jinengshuipingList = masterService.getMastersBycategoryCode("1110");
		session.setAttribute("jinengshuiping", jinengshuipingList);
		List<Master> zigeList = masterService.getMastersBycategoryCode("1060");
		session.setAttribute("zige", zigeList);
		List<Master> GDCCJOBTitleList = masterService.getMastersBycategoryCode("1010");
		session.setAttribute("GDCCJOBTitle", GDCCJOBTitleList);
		List<Master> DeliveryCapabilityList = masterService.getMastersBycategoryCode("1040");
		session.setAttribute("DeliveryCapability", DeliveryCapabilityList);
		List<Master> JDDCTitleList = masterService.getMastersBycategoryCode("1050");
		session.setAttribute("JDDCTitle", JDDCTitleList);
		List<Master> shenpizhuangtaiList = masterService.getMastersBycategoryCode("0060");
		session.setAttribute("shenpizhuangtai", shenpizhuangtaiList);
		
		List<Company> companyList=companyService.getAllCompanies();
		session.setAttribute("companies", companyList);
		
		List<Department> DepartmentList=departmentService.getAllDepartments();
		session.setAttribute("departments", DepartmentList);
		return "employeQuery";
	}
}
