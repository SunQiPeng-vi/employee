<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:import url="/common/calendar.jsp"></c:import> 
<!DOCTYPE html>
<html>
<head>
<title>社員情报更新--JDDC	Internal Management	System</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/pop.js"></script>
</head>
<body> 
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<div align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0"> 
  <TR> 
    <TD> 
      <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border"> 
        <tr> 
          <td> 
	            <table border="0" width="100%" height="60" bgcolor="#003366"> 
		              <tr> 
			                <td width="11" rowspan="2"></td> 
			                <td width="65">
				                  <img src="img/hp_logo.gif" width="47" height="28">
				                  <br><span class="titleJDDC">JDDC</span> 
			                </td> 
			                <td rowspan="2"> 
				                  <table height="52" width="100%" border="0"> 
					                    <tr> 
					                      <td	colspan="2"	height="10">
					                        <p align="right" class="titleLeft"><font face="Cooper	Black">JDDC	Internal Management	System</font></p>
					                      </td>  
					                    </tr> 
					                    <tr> 
					                      <td	width=40%>&nbsp;</td> 
					                      <td><p class="titleCenter"> <font face="Times New Roman"> <b>员工情报更新</b></font></p></td> 
					                    </tr> 
				                  </table>
			                </td> 
		              </tr> 
	            </table> 
                        
	            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
	                <tr bgcolor="#85B7FA"> 
	                    <td>&nbsp;</td> 
	                    <td width="150" class="txt_normal">操作者：${user.eid }</td> 
	                    <td width="60" class="txt_normal"><div align="right"><a href="Login.htm">Logout</a></div></td> 
	                </tr> 
	            </table> 
              <HR> 
              <table border="0" cellspacing="0" cellpadding="0" width="100%"> 
                  <tr> 
										<td valign="top" > <div align="center" class="div_naviarea" id="navi" > 
											<!-- navigator area start here --> 
											<table border="0" cellspacing="0" cellpadding="0"> 
												<tr> 
													<td width="2" rowspan="12" bgcolor="#808080" >&nbsp;</td> 
													<td width="205" >
														<table 	border="0" cellspacing="0" cellpadding="0" width="100%" > 
															 <tr> 
																<td width="205" height="30"><span class="menuBranch">&#8226;员工信息管理</span></td> 
															</tr> 
															<tr> 
																<td height="30"><span class="menuItem">　　<a href="employeRegister.htm" target="_self">员工信息登录</a></span></td> 
															</tr> 
															<tr> 
																<td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/employeQuery" target="_self">员工信息检索</a></span></td> 
															</tr> 
															 <tr> 
																<td height="30"><span class="menuItem">　　<a href="confirmInfoQuery.htm" target="_self">员工信息审批</a></span></td> 
															</tr> 
															<tr> 
																<td height="30"><span class="menuBranch">&#8226;员工期权管理</span></td> 
															</tr> 
															<tr> 
																<td height="30"><span class="menuItem">　　<a href="TUPPurchase.htm" target="_self">员工期权申请</a></span></td> 
															</tr> 
															<tr> 
																<td height="30"><span class="menuItem">　　<a href="TUPQuery.htm" target="_self">员工期权一览</a></span></td> 
															</tr>  
															<tr> 
																<td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">员工期权审批</a></span></td> 
															</tr>  			                                           
			
														</table>	
													</td> 
													<td width="1" rowspan="12" bgcolor="#808080"></td> 
												</tr> 
												
												
											</table> 
											<!-- navigator area end here --> 
										</div></td> 
                      <td width="750" align="center" valign="top">
	                      <div class="div_workarea_low"> 
	                      		<!-- Work area start here --> 
			                      <table width="100%"  cellspacing="1" > 
					                      <tr> 
											  <td>
											  	<div class="div_error_message"> 
														<span class="txt_error_message" id="txt_error_message">
														<!-- 错误信息1<BR>  -->
														</span> 
												</div>
											</td> 
					                      </tr>
					                      <tr> 
					                        <td height="5"></td> 
					                      </tr>
			                      </table>
			                      
			                      <div>
		                        <table width="100%" border="0" cellpadding="1" cellspacing="1"> 
							              <form action="" method="post" name="updateForm">
												    	<tr>
												    		<td colspan="4"><span class="txt_normal"><b>员工基本情报</b></span></td>
												    	</tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">EID</span></td> 
			                          <td class="txt_normal" ><div class="div_ankanNoDisp">${emp.eid}</div></td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">邮件地址</span></td> 
			                          <td><input id="mailaddress" type="text" name="T2" size="20" class="string_must_input" value="${emp.mailAddress}"><span class="mustInputStar">*</span></td> 
			                        </tr>
									            <tr><td><br></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名（中文）</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string_must_input" value="${emp.nameCn}"><span class="mustInputStar">*</span></td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名（拼音）</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string_must_input" value="${emp.name}"><span class="mustInputStar">*</span></td>
			                        </tr> 
			                        <tr> 

			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名(日語汉字)</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string" value="${emp.nameKanji}"></td> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">姓名（日语假名）</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string" value="${emp.nameKana}"></td> 			                          
			                        </tr> 
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">英文名</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string" value="${emp.englishName}"></td> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">直属经理</span></td> 
 						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
									<option></option>
									<c:forEach items="${managers }" var="manager">
								    	<option value="${manager.eid }" ${manager.eid==emp.managerEid? "selected":""}>${manager.name }</option>
								    </c:forEach>
								</select><span class="mustInputStar">*</span></td>
			                        </tr>
									            <tr><td><br></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">出生年月日</span></td> 
			                         <td><input id="birthday" type="text" name="T123" size="10" value="${emp.birthday }" onkeydown="javascript:return skip2component(this);"><input type="image" src="img/calendar.gif" onclick="return showCalendar('birthday', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
									  </td>  
			                          <td width="134" class="tdLabel"><span class="txt_normal">性別</span></td> 
															   <td><input type="radio" value="B1" name="V3" ${emp.gender=='M'?"checked='checked'":"" }><span class="txt_normal">男</span>
																	<input type="radio" value="B2" name="V3" ${emp.gender!='M'?"checked='checked'":""}><span class="txt_normal">女</span>
															  </td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">电话号码</span></td> 
			                          <td><input type="text" name="T123" size="20" class="string" value="${emp.telNo }"></td> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">手机号码</span></td> 
			                          <td ><input type="text" name="T123" size="20" class="string" value="${emp.mobileNo }"></td> 
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">紧急联络电话</span></td> 
			                          <td colspan="3"><input type="text" name="T123" size="20" class="string" value="${emp.emergencyTelNo }"></td> 
			                        </tr>
															<tr><td><br></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">Location Code</span></td> 
			                          <td colspan="3">
																	<select size="1" name="T2" class="string_must_input">
																		<option ></option>
													
																		<c:forEach items="${locations }" var="location">
								    									<option value="${location.code }" ${location.code==emp.location.code ?"selected":""}>${location.name }</option>
								   										 </c:forEach>
																	</select><span class="mustInputStar">*</span>
															  </td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">Site</span></td> 
															  <td>
																	<select size="1" name="T2" class="string">
																	<option></option>
																		<c:forEach items="${sites }" var="site">
								    									<option value="${site.code }" ${site.code==emp.site.code? "selected":""}>${site.name }</option>
								   										 </c:forEach>
																	</select>
															　</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">部门</span></td> 
									  						<td>
																		<select size="1" name="T2" class="string">
																		<option></option>
																			<c:forEach items="${departments }" var="department">
								    									<option value="${department.id }" ${department.id==emp.department.id? "selected":""}>${department.name }</option>
								   										 </c:forEach>
																		</select>
															　</td>
			                        </tr>
			                        <tr>
			                          <td width="134" class="tdLabel"><span class="txt_normal">员工种类</span></td> 
									  						<td>
																		<select size="1" name="T2" class="string">
																		<option></option>
																			<c:forEach items="${types }" var="type">
								    									<option value="${type.code }" ${type.code==emp.type.code? "selected":""}>${type.name }</option>
								   										 </c:forEach>
																		</select>
															　</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">公司</span></td> 
															  <td>
																		<select size="1" name="T2" class="string">
																		<option></option>
																		  
																			<c:forEach items="${companys }" var="company">
								    									<option value="${company.id }" ${company.id==emp.company.id? "selected":""}>${company.name }</option>
								   										 </c:forEach>
																		</select>
															　</td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">入职日</span></td> 
			                          <td><input id="startDate" type="text" name="T1242" size="10" value="${emp.startDate }" class="string_must_input" onkeydown="javascript:return skip2component(this);"><input type="image" src="img/calendar.gif" onclick="return showCalendar('startDate', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/> 
			                             <span class="mustInputStar">*</span>
									  						</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">退职日</span></td> 
			                          <td><input id="endDate" type="text" name="T1242" size="10" value="${emp.endDate }" onkeydown="javascript:return skip2component(this);"><input type="image" src="img/calendar.gif" onclick="return showCalendar('endDate', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>  
			                             
									  						</td>
														  </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel" ><span class="txt_normal">在职状态</span></td>
															  <td>
																	<select size="1" name="T2" class="string">
																		<option></option>
																			<c:forEach items="${works }" var="work">
								    										<option value="${work.code }" ${work.code==emp.work.code? "selected":""}>${work.name }</option>
								   										 </c:forEach>
																	</select>
															　</td>
															  <td width="134" class="tdLabel"><span class="txt_normal">Billable区分</span></td> 
															  <td><input type="radio" value="B1" name="V4" ${emp.billableFlag=='1'?"checked='checked'":""}><span class="txt_normal">Billable</span>
																	<input type="radio" value="B2" name="V4" ${emp.billableFlag!='1'?"checked='checked'":""}><span class="txt_normal">NonBillable</span>
															  </td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">Manager区分</span></td> 
															  <td colspan="3">
															  		<input type="radio" value="B1" name="V1" ${emp.managerFlag=='1'?"checked='checked'":""}><span class="txt_normal">是</span>
																	<input type="radio" value="B2" name="V1" ${emp.managerFlag!='1'?"checked='checked'":""} ><span class="txt_normal">否</span>
																	
															  </td>
			                        </tr>
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>日本经历及Visa情报</b></span></td></tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">在日年限</span></td> 
			                          <td><input style="text-align:right;" type="text" name="T123" size="5" class="string" value="${emp.yearsAtJanpan }" ><span class="txt_normal">年</span></td> 
			                          <td width="134" class="tdLabel" ><span class="txt_normal">日語水平</span></td>
															  <td>
																	<select size="1" name="T2" class="string">
																		<option></option>
																			<c:forEach items="${japanese }" var="japan">
								    										<option value="${japan.code }" ${japan.code==emp.japanLevel.code? "selected":""}>${japan.name }</option>
								   										 </c:forEach>
																    
																	</select>
															　</td>
			                        </tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">是否有护照</span></td> 
									  						<td><input type="radio" value="V1" name="R1" ${emp.passportFlag=='1'?"checked='checked'":""}><span class="txt_normal">有</span>
			                              <input type="radio" value="V1" name="R1" ${emp.passportFlag!='1'?"checked='checked'":""}><span class="txt_normal">无</span>
									  						</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">护照有效期限</span></td> 
			                          <td><input id="passportExpireDate "  type="text" name="T1242" size="10" value="${emp.passportExpireDate }" onkeydown="javascript:return skip2component(this);"><input type="image" src="img/calendar.gif" onclick="return showCalendar('passportExpireDate ', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>  
			                             </td>
			                        </tr> 
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">是否有签证</span></td> 
									  						<td><input type="radio" value="V1" name="R2" ${emp.visaFlag=='1'?"checked='checked'":""}><span class="txt_normal">有</span>
			                              <input type="radio" value="V1" name="R2" ${emp.visaFlag!='1'?"checked='checked'":""}><span class="txt_normal">无</span>
									  						</td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">签证有效期限</span></td> 
			                          <td><input id="visaExpireDate" type="text" name="T123" size="10" value="${emp.visaExpireDate }"  onkeydown="javascript:return skip2component(this);" ><input type="image" src="img/calendar.gif" onclick="return showCalendar('visaExpireDate', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
									  </td> 
								    </tr>
															<tr>
			                          <td width="134" class="tdLabel"><span class="txt_normal">签证种类</span></td> 
															  <td>
																		<select size="1" name="T2" class="string">
																			<option></option>
																			<c:forEach items="${visas }" var="visa">
								    										<option value="${visa.code }" ${visa.code==emp.visaType.code? "selected":""}>${visa.name }</option>
								   										 </c:forEach>
																		</select>
			                          </td>
			                          <td width="134" class="tdLabel"><span class="txt_normal">再入国期限</span></td> 
			                          <td><input id="reentryLimitedDate" type="text" name="T123" size="10" value="${emp.reentryLimitedDate }" onkeydown="javascript:return skip2component(this);"><input type="image" src="img/calendar.gif" onclick="return showCalendar('reentryLimitedDate', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
									      						
									  						</td> 
			                        </tr>
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>JOB情报</b></span></td></tr>
																<tr align="left" >
				                      		<td colspan="4">
					              				<table border="0" width="675" cellspacing="1" cellpadding="1">
												
												  
													<tr class="trHeader">
														<td nowrap width="120" align="center" class="txt_table_head">GDCC JOB Title</td>
														<td nowrap width="150" align="center" class="txt_table_head">Delivery Capability 認定</td>
														<td nowrap width="120" align="center" class="txt_table_head">JDDC 组织 Title</td>
														<td nowrap width="80" align="center" class="txt_table_head">审批状态</td>
														<td nowrap align="center" class="txt_table_head">备注</td>
													</tr>
													<c:forEach items="${jobs }" var="job" varStatus="vs">
													<tr  class="${vs.count%2==1?'trOdd':'trEven' }" >
														<td nowrap width="120" align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.jobTitle.name }</td>
														<td nowrap width="150" align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.deliveryCapability.name }</td>
														<td nowrap width="120" align="center"class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.jobPosition.name }</td>
														<td nowrap width="80" align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.confirmStatus.name }</td>
														<td nowrap align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.rejectReason }
													   
													   <c:if test="${fn:length(jobs)==1}">
														   <c:if test="${job.confirmStatus.code == '0001' || job.confirmStatus.code == '0003'}">
														   <div id="jobhidden">
														    <input type="hidden" name="job.jobTitle.code" value="${job.jobTitle.code }" />
														    	<input type="hidden" name="job.deliveryCapability.code" value="${job.deliveryCapability.code }"/>
														    	<input type="hidden" name="job.jobPosition.code" value="${job.jobPosition.code}"/>
														    	<input type="hidden" name="job.eid" value="${job.eid}"/>
														    	<input type="hidden" name="job.confirmStatus.code" value="${job.confirmStatus.code}"/>
														   </div>
														   </c:if>
													    </c:if>	
													    <c:if test="${fn:length(jobs)==2 && job.confirmStatus.code == '0003' && user.jobCode=='0002'}">
													    	 <div id="jobhidden">
														    <input type="hidden" name="job.jobTitle.code" value="${job.jobTitle.code }" />
														    	<input type="hidden" name="job.deliveryCapability.code" value="${job.deliveryCapability.code }"/>
														    	<input type="hidden" name="job.jobPosition.code" value="${job.jobPosition.code}"/>
														    	<input type="hidden" name="job.eid" value="${job.eid}"/>
														    	<input type="hidden" name="job.confirmStatus.code" value="${job.confirmStatus.code}"/>
														   </div>
													    </c:if>
													    </td>
													</tr>
												</c:forEach>																											
												</table>
											</td>
										</tr>
				                      	<tr><td cols="4">
				                      		<c:forEach items="${jobs }" var="job" varStatus="vs">
				                      		<c:if test="${fn:length(jobs)==1}">
												   <c:if test="${job.confirmStatus.code == '0001' || job.confirmStatus.code == '0003'}">
												  <input type="checkbox" id="jobcheck" /><span class="txt_normal">JOB情报变更</span>
												   </c:if>
											</c:if>	
										    <c:if test="${fn:length(jobs)==2 && job.confirmStatus.code == '0003' && user.jobCode=='0002'}">
										    	 <input type="checkbox" id="jobcheck" /><span class="txt_normal">JOB情报变更</span>
										    </c:if>
				                      		</c:forEach>
				                      	</td></tr>
				                      	<tbody id="jobchange" style="display:none">
															<tr>
			                          <td width="134" class="tdLabel" nowrap><span class="txt_normal">GDCC JOB Title</span></td>
															  <td>
																		<select size="1" name="T2" class="string">
																		<option></option>
																		<c:forEach items="${titles}" var="title">
																		 	<option value="${title.code }">${title.name }</option>
																		</c:forEach>
																			
																		</select> <span class="mustInputStar">*</span>
															　</td>
			                          <td width="150" class="tdLabel" nowrap><span class="txt_normal">Delivery Capability 认定</span></td>
									  						<td>
																		<select size="1" name="T2" class="string">
																		<option></option>
																			<c:forEach items="${deliverys}" var="del">
																		 		<option value="${del.code }">${del.name }</option>
																			</c:forEach>
																		</select> <span class="mustInputStar">*</span>
															　</td>
															</tr>
			                        <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">JDDC 组织 Title</span></td> 
															  <td colspan="3">
																		<select size="1" name="T2" class="string">
																		<option></option>
																			<c:forEach items="${jdbcs}" var="jdbc">
																		 		<option value="${jdbc.code }">${jdbc.name }</option>
																			</c:forEach>
																		</select> <span class="mustInputStar">*</span>
															　</td>
			                        </tr>
			                        </tbody>
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>技能情报</b></span></td></tr>
															<tr><td colspan="4"><input type="button" value="　変　更　" name="update" class="string" id="skillButton"></td></tr>
			                        <tr> 
				                      	<td colspan="4">
				              						<table border="0" width="300" cellspacing="1" cellpadding="1">
																		<tr class="trHeader">
																			<td width="70%" align="center" class="txt_table_head">技能</td>
																			<td width="30%" align="center" class="txt_table_head">技能水平</td>
																		</tr>
													<tbody id='skill'>
														<c:forEach items="${skills }" var="skill" varStatus="vs">
														<tr  class="${vs.count%2==1?'trOdd':'trEven' }" >
															<td nowrap width="70%" align="center" value="${skill.skill.code}"><span class="txt_normal">${skill.skill.name}</span></td>
															<td nowrap width="30%" align="center" value="${skill.skillLevel.name}"><span class="txt_normal">${skill.skillLevel.name }</span></td>
		  
														</tr>
													</c:forEach>	
													</tbody>																																			
													</table>
																</td>
			                        </tr>			                   			                        
															<tr><td cols="4"><br></td></tr>
															<tr><td colspan="4"><span class="txt_normal"><b>资格认证情报</b></span></td></tr>
															<tr><td colspan="4"><input type="button" value="　変　更　" name="update" class="string" id="certificationButton"></td></tr>
			                        <tr> 
				                      	<td colspan="4">
				              						<table border="0" width="300" cellspacing="1" cellpadding="1">
																		<tr class="trHeader">
																			<td width="70%" align="center" class="txt_table_head">资格认证</td>
																			<td width="30%" align="center" class="txt_table_head">取得日期</td>
																		</tr>
																		<tbody id='certification'>
																		<c:forEach items="${certifications }" var="certification" varStatus="vs">
																			<tr  class="${vs.count%2==1?'trOdd':'trEven' }" >
																				<td nowrap width="70%" align="center" value="${certification.certification.code}"><span class="txt_normal">${certification.certification.name}</span></td>
																				<td nowrap width="30%" align="center" value="${certification.certifiedDate}"><span class="txt_normal">${certification.certifiedDate}</span></td>
							  
																			</tr>
																		</c:forEach>
																		</tbody>																			
																	</table>
																</td>
			                        </tr>

			                        <tr>
			                        	<td colspan="4" align="center">
				                        	<table>
											  						<tr>
												  						<td width="200" align="center"><br>
												  								<input id="updateBtn" type="submit" value="　更　新　" name="Update" class="string" >
												  						</td>
						                          <td width="200" align="center"><br><input type="reset" value="　返　回　" name="Back" class="string" onclick="openWindow('employeQuery.htm')"></td>
					                        	</tr>
				                        	</table>
			                          </td>
			                        </tr> 			                        																																																                        			                        															
																		                        			                        
			                      
			                    	</form> 
			                      </table>  
			                      </div>  
                            <!-- Work area end here --> 
                        </div>
                      </td> 
                  </tr> 
              </table>
          </td> 
        </tr> 
        <!-- Footer area start here --> 
        <tr> 
            <td height="1"></td> 
        </tr> 
        <tr> 
            <td width="100" height="20" bgcolor="#003366"></td> 
        </tr>    
        <tr> 
            <td><div align="center" class="string"> © Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
        </tr> 
        <!-- Footer area end here --> 
      </table>
    </TD> 
  </TR> 
</table> 
</div> 
<script type="text/javascript">
	$("#updateBtn").click(function(){
		var isSubmit = true;
		//每次检索清空错误消息
		$("#txt_error_message").html("");
		//验证邮箱
		var mailaddress = $("#mailaddress").val();
		if(mailaddress==''){
			$("#txt_error_message").append("メールアドレスに値が入力されていません。<br/>");
			isSubmit=false;
		}
		else{
			//判断邮箱是不是半角英文
			var re=/^[a-zA-Z]+$/;
			var str2 =mailaddress.match(/[\uff00-\uffff]/g); 
			if( !re.test(mailaddress)||str2!=null){
				$("#txt_error_message").append("メールアドレスに使用できない文字を含んでいます。半角英文字を入力してください。<br/>");
				isSubmit = false;
		    }
			
			
		}
		
		
		
		if(isSubmit==true){
			var rs = window.confirm("请确认是否更新？");
		   	return rs;
		}
		return false;
	});


	$("#jobcheck").change(function(){
			if(this.checked == true){
				$("#jobchange select").eq(0).children().each(function(){
					if(this.value == $("#jobhidden input[name='job.jobTitle.code']").val()){
						this.selected = true;
					}
				});
				$("#jobchange select").eq(1).children().each(function(){
					if(this.value == $("#jobhidden input[name='job.deliveryCapability.code']").val()){
						this.selected = true;
					}
				});
				$("#jobchange select").eq(2).children().each(function(){
					if(this.value == $("#jobhidden input[name='job.jobPosition.code']").val()){
						this.selected = true;
					}
				});
				
				$("#jobchange").show();
			}else{
				$("#jobchange").hide();
			}
		});
	
	$("#skillButton").click(function(){
		var url = 'skillUpdate';
		var sonStyle="dialogWidth:560px;dialogHeight:580px;help:no;resizable:no;center:yes;scroll:yes;status:no";
		var param={};
		var arr = new Array();
		param.values = arr;
		<c:forEach items="${skills }" var="skill" varStatus="vs">
		var skill1 = {"skillcode":"${skill.skill.code}", "skillname":"${skill.skill.name}", "levelcode":"${skill.skillLevel.code}","levelname":"${skill.skillLevel.name}"};
		arr.push(skill1);
		</c:forEach>
		window.showModalDialog(url, param, sonStyle);
	});
	
	function changskill(data){
		$("#skill").html('');
		var html = '';
		
		for(var i=0; i< data.length; i++){
			var arr=data[i];
			if(i%2==1){
				html+='<tr class="trOdd" >';
			}
			else{
				html+='<tr class="trEven" >';
			}
			html+= '<td nowrap width="70%" align="center" value="'+arr.skillcode+'">';
			html+= '<span class="txt_normal">'+arr.skillname+'</span></td>';
			html+= '<td nowrap width="30%" align=center" value="'+arr.levelcode+'">';
			html+= '<span class="txt_normal">'+arr.levelname+'</span></td>';
			html+='</tr>';
		}
		
		$("#skill").html(html);
		
		console.log(data);
	}
	
	$("#certificationButton").click(function(){
		var url = 'certificationUpdate';
		var sonStyle="dialogWidth:560px;dialogHeight:580px;help:no;resizable:no;center:yes;scroll:yes;status:no";
		var param={};
		var arr = new Array();
		param.values = arr;
		<c:forEach items="${certifications }" var="certification" varStatus="vs">
		var certification = {"certificationCode":"${certification.certification.code}", "certificationName":"${certification.certification.name}", "certificationDate":"${certification.certifiedDate}"};
		arr.push(certification);
		</c:forEach>
		window.showModalDialog(url, param, sonStyle);
	});
	
	function changcertification(data){
		$("#certification").html('');
		var html = '';
		
		for(var i=0; i< data.length; i++){
			var arr=data[i];
			if(i%2==1){
				html+='<tr class="trOdd" >';
			}
			else{
				html+='<tr class="trEven" >';
			}
			html+= '<td nowrap width="70%" align="center" value="'+arr.certificationCode+'">';
			html+= '<span class="txt_normal">'+arr.certificationName+'</span></td>';
			html+= '<td nowrap width="30%" align=center" value="'+arr.certificationDate+'">';
			html+= '<span class="txt_normal">'+arr.certificationDate+'</span></td>';
			html+='</tr>';
		}
		
		$("#certification").html(html);
		
		console.log(data);
	}
</script>
</body>
</html>
