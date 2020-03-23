<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<title>JDDC Internal Management System</title>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">

</head>
<body > 
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
							<td	width="11" rowspan="2">	</td>
							<td	width="65">
								<img	src="img/hp_logo.gif" width="47" height="28">
								<br><span	class="titleJDDC">JDDC</span>
							</td>
							<td	rowspan="2">
								  <table height="52"	width="100%" border="0">
										  <tr>
											  <td	colspan="2"	height="10">
											    <p align="right" class="titleLeft"><font face="Cooper	Black">JDDC	Internal Management	System</font></p>
											  </td>
										  </tr>
										  <tr>
										  	<td	width=40%>&nbsp;</td>
											  <td><p class="titleCenter"><font face="Times New Roman"><b>员工情报详细</b></font></p></td>
										  </tr>
								  </table>
							</td>
						</tr>
					</table>
					
					<table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF">
						<tr	bgcolor="#85B7FA">
							<td>&nbsp;</td>
							<td	width="150"	class="txt_normal">操作者：${user.eid }</td>
							<td	width="60" class="txt_normal"><div align="right"><a	href="Login.htm">Logout</a></div></td>
						</tr>
					</table>
					<HR>
					<table border="0" cellspacing="0" cellpadding="0" width="100%" >
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
							
							<td	width="750"	align="center" valign="top">
								<!-- Work area	start here -->
								<form name="form1" method="post" action="">
									<div class="div_workarea">

	                    			<table width="90%" border="0" cellpadding="1" cellspacing="1" align="left">
	                    			<!-- 社員基本情报 -->
									    <tr height="20">
									    	<td colspan="4"><span class="txt_normal"><b>员工基本情报</b></span></td>
									    </tr>
										<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">EID</font></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.eid }</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">邮件地址</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.mailAddress }</span></td>                              
					                    </tr>                     
				                        <tr><td><br></td></tr>
				                        <tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">姓名(中文)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.nameCn }</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">姓名(拼音)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.name }</span></td>                         
				                        </tr> 
				                       <tr>	
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">姓名(日语汉字)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.nameKanji}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">姓名(日语假名)</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.nameKana}</span></td>                           
				                        </tr> 
										<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">英文名</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.englishName}</span></td>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">直属经理</span></td>
					                        <td class="trOdd"><span class="txt_normal">${emp.managerName}</span></td>
										</tr> 
										<tr><td><br></td></tr>
											
					                    <tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">出生年月日</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.birthday}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">性別</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.gender=='M'?'男':'女' }</span></td>                          
										</tr>                                										
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">电话号码</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.telNo}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">手机号码</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.mobileNo}</span></td> 
				                      	</tr>
				                      	<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">紧急联络电话</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.emergencyTelNo}</span></td>
					                        <td width="134" class="trEven">&nbsp;</td>
					                        <td class="trOdd"></td>
				                      	</tr>
				                      	<tr><td><br></td></tr>
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">Location Code</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.location.name}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">Site</span></td> 
					                        <td class="trOdd"><span class="txt_normal">SH-${emp.site.name}</span></td>                           
				                      	</tr>
				                      	<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">部门</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.department.name}</span></td>                     	
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">在职状态</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.work.name}</span></td>                         	
				                    	</tr>	
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">Billable区分</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.billableFlag == '1' ? 'Billable':'NonBillable'}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">Manager区分</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.managerFlag == '1' ? 'Manager':'普通社员'}</span></td>                                             
				                      	</tr> 
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">HP/BP区分</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.type.name}</span></td>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">所属公司</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.type.name == 'BP' ? 'BP':'HP'}</span></td>                                                  
				                     	</tr>                                           	
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">入职日</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.startDate}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">退职日</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.endDate}</span></td>
				                      	</tr> 
				                      	<tr><td cols="4"><br></td></tr>
                      
				                     	<!-- 日本経歴及びVisa情报 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>日本经历及Visa情报</b></span></td>
				                      	</tr>
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">在日年限</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.yearsAtJanpan}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">日语水平</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.japanLevel.name}</span></td>                                                 
				                      	</tr>
				                      	<tr>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">是否有护照</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.passportFlag == '1' ? '有':'无'}</span></td>
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">护照有效期限</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.passportExpireDate}</span></td>                        	
				                      	</tr>                                  										
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">是否有签证</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.visaFlag == '1' ? '有':'无'}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">签证种类</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.visaType.name}</span></td>                                                 
				                      	</tr>  
				                      	<tr> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">签证有效期限</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.visaExpireDate}</span></td> 
					                        <td width="134" class="trEven">&nbsp;<span class="txt_normal">再入国期限</span></td> 
					                        <td class="trOdd"><span class="txt_normal">${emp.reentryLimitedDate}</span></td>                                                 
				                      	</tr>  									    
				                      	<tr><td cols="4"><br></td></tr>
                      
				                      	<!-- JOB情报 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>JOB情报</b></span></td>
				                      	</tr>
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
													<tr class="${vs.count%2==1?'trOdd':'trEven' }" >
														<td nowrap width="120" align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.jobTitle.name }</td>
														<td nowrap width="150" align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.deliveryCapability.name }</td>
														<td nowrap width="120" align="center"class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.jobPosition.name }</td>
														<td nowrap width="80" align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.confirmStatus.name }</td>
														<td nowrap align="center" class="${job.confirmStatus.code=='0003'?'txt_error_message':'txt_normal' }">${job.rejectReason }</td>
													</tr>
												</c:forEach>																														
												</table>
											</td>
										</tr>
				                      	<tr><td cols="4"><br></td></tr>
                      
									    <!-- 社員資格情报 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>员工资格认证情报</b></span></td>
				                      	</tr>
				                      	<tr align="left" >
				                      		<td colspan="4">
              									<table border="0" width="300" cellspacing="1" cellpadding="1">
													<tr class="trHeader">
														<td width="70%" align="center" class="txt_table_head">资格认证</td>
														<td width="30%" align="center" class="txt_table_head">取得日期</td>
													</tr>
													<c:forEach items="${certifications }" var="certification" varStatus="vs">
													<tr class="${vs.count%2==1?'trOdd':'trEven' }" >
														<td nowrap width="70%" align="center"><span class="txt_normal">${certification.certification.name }</span></td>
														<td nowrap width="30%" align="center"><span class="txt_normal">${certification.certifiedDate }</span></td>
													</tr>
													</c:forEach>	
																												
												</table>
											</td>
										</tr>
                      					<tr><td cols="4"><br></td></tr>
                      
									    <!-- 社員スキル情报 -->                   
				                      	<tr height="20">
				                      		<td colspan="4"><span class="txt_normal"><b>员工技能情报</b></span></td>
				                      	</tr>                      
				                      	<tr align="left">
				                      		<td colspan="4">
              									<table border="0" width="300" cellspacing="1" cellpadding="1">
													<tr class="trHeader">
														<td width="70%" align="center" class="txt_table_head">技能</td>
														<td width="30%" align="center" class="txt_table_head">技能水平</td>
													</tr>
													<c:forEach items="${skills }" var="skill" varStatus="vs">
													<tr class="${vs.count%2==1?'trOdd':'trEven' }" >
														<td nowrap width="70%" align="center"><span class="txt_normal">${skill.skill.name }</span></td>
														<td nowrap width="30%" align="center"><span class="txt_normal">${skill.skillLevel.name }</span></td>
													</tr>
													</c:forEach>
													
																																												
												</table>
											</td>
										</tr>
										<tr>
						  					<td colspan="4" align="center"><br>
						  						<input id="back" type="button" value="　返 回　" name="Back" class="string" >
						  					</td>
                      					</tr>                      
									</table>
							    	</div>
						    	</form>
						    	<!-- Work area end here	-->
						  	</td>
					  	</tr>
				  	</table>
				</td>
		  	</tr>		  
			  
			<!--	Footer area	start here -->
			<tr>
				<td	height="1"></td>
			</tr>
			<tr>
				<td	height="20"	bgcolor="#003366"></td>
			</tr>	
			<tr>
				<td><div align="center"	class="string">	© Copyright	2007 Hewlett-Packard TSG-JDDC </div></td>
			</tr>
			<!-- Footer	area end here -->
		</table>

	  	</TD>
	</TR>
</table>
</div> 
<script type="text/javascript">
	$("#back").click(function(){
		window.history.back();
		
	});
</script>
</body>
</html>
