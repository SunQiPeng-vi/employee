<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:import url="/common/calendar.jsp"></c:import> 
<!DOCTYPE html>
<html>
<head>
<title>JDDC	Internal Management	System</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>

<style type="text/css">
<!--
.style4	{
	font-size: 12px;
	color: #FFFFFF;
}
-->
</style>
</head>
<body > 
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<div align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0"> 
    <TR> 
        <TD> <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border"> 
                <tr> 
                    <td> <table border="0" width="100%" height="60" bgcolor="#003366"> 
                            <tr> 
                                <td width="11" rowspan="2">　</td> 
                                <td width="65"><img src="img/hp_logo.gif" width="47" height="28"> <br><span class="style4">JDDC</span> </td> 
                                <td rowspan="2"> <table height="52" width="100%" border="0"> 
                                        <tr> 
                                            <td	colspan="2"	height="10">
                                            <p align="right" class="titleLeft" > <font face="Cooper	Black">JDDC	Internal Management	System</font></p></td>  
                                        </tr> 
                                        <tr> 
                                          <td	width=40%>&nbsp;</td> 
                                            <td> <p class="titleCenter"> <font face="Times New Roman"> <b>社員情報検索</b></font></p></td> 
                                        </tr> 
                                    </table></td> 
                            </tr> 
                        </table> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
                                <tr bgcolor="#85B7FA"> 
                                    <td>&nbsp;</td> 
                                    <td width="150" class="txt_normal">操作者：${user.eid} </td> 
                                    <td width="60" class="txt_normal"><div align="right"><a href="Login.jsp">ログアウト</a></div></td> 
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
                                                			<td width="205" height="30"><span class="menuBranch">&#8226;社員管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/empRegister" target="_self">社員情報登録</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/employeQuery" target="_self">社員情報検索</a></span></td> 
			                                            </tr> 
			                                             <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="./confirmInfoQuery.htm" target="_self">社員情報承認</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;Funnel管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="#" target="_self">XXXX</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="#" target="_self">XXXX</a></span></td> 
			                                            </tr>  
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;プロジェクト管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="#" target="_self">XXXX</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="#" target="_self">XXXX</a></span></td> 
			                                            </tr> 
			                                            <!-- トレーニング管理 -->
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;トレーニング管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="trainingQuery.htm" target="_self">トレーニング検索</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="trainingPublishQuery.htm" target="_self">トレーニング発表</a></span></td> 
			                                            </tr>
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="trainingParticipantQuery.htm" target="_self">トレーニング参加者変更</a></span></td> 
			                                            </tr>
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="#" target="_self">XXXX</a></span></td> 
			                                            </tr>
			                                            <!-- /トレーニング管理 -->
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;稼働管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="#" target="_self">XXXX</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="#" target="_self">XXXX</a></span></td> 
			                                            </tr> 
			                                             <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;システム管理</span></td> 
			                                            </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="employeRoleAssign1.htm" target="_self">社員ロールアサイン</a></span></td> 
						                                      </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="roleResourceList.htm" target="_self">ロール機能権限アサイン</a></span></td> 
						                                      </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="passwordChange.htm" target="_self">パースワード変更</a></span></td> 
						                                      </tr>
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="#" target="_self">マスタメンテナンス</a></span></td> 
						                                      </tr>
																									<tr> 
			                                                <td>&nbsp;</td> 
			                                            </tr>
                                                	</table>	
                                                </td> 
                                                <td width="1" rowspan="12" bgcolor="#808080"></td> 
                                            </tr> 
                                            
                                            
                                        </table> 
                                        <!-- navigator area end here --> 
                                    </div></td> 
                                    <td width="750" align="center" valign="top"> <div class="div_workarea"> 
                                            <!-- Work area start here --> 
                                               <table width="100%"  cellspacing="1" > 
                      <tr> 
                        <td class="tdFuncTitle">検索条件入力</td> 
                      </tr> 
                      
                      <tr> 
                        <td height="5"></td> 
                      </tr> 
                      <tr> 
						<td >
							<div class="div_error_message"> 
							<span class="txt_error_message">
							<!-- 错误信息1<BR>  -->
							</span> 
							</div>
						</td> 
                      </tr> 
                      
                    </table> 
                    <div>
                      <table width="100%" border="0" cellpadding="1" cellspacing="1"> 
					  <form action="${pageContext.request.contextPath }/findEmp" method="get" name="searchForm" target="_self">
					    <tr><td colspan="4"><span class="txt_normal"><b>社員基本情報</b></span></td></tr>
                        <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">EID</span></td> 
                          <td width="25%"><input type="text" id="eid" name="eid" size="20" maxlength="8" class="string" value=""></td> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">名前（ローマ字）</span></td> 
                          <td width="25%"><input type="text" id="name" name="name" size="20"  class="string" value=""></td> 
                        </tr> 
                        <tr> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">サイト</span></td> 
						  <td width="25%">
								<select size="1" name="site.code" class="string_selectbox_1">
									<option></option>
									 <!-- add 2020/3/4 by sun -->
								    <c:forEach items="${sites }" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">部署</span></td> 
						  <td width="25%">
								<select size="1" name="department.id" class="string_selectbox_1">
								    <option></option>
									 <!-- add 2020/3/4 by sun -->
									 <c:forEach items="${departments}" var="t">
										 <option value="${t.id }">${t.name}</option>
									 </c:forEach>
								</select>
						　</td>
                        </tr>
                        <tr>
                          <td width="25%" class="tdLabel"><span class="txt_normal">社員種類</span></td> 
						  <td width="25%">
								<select size="1" name="type.code"  id="mytype" class="string_selectbox_1">
								    <option></option>
								    <!-- add 2020/3/4 by sun -->
								    <c:forEach items="${types }" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
									<!-- delete 2020/3/4 by yebo
									<option>HP</option>
									<option>BP</option>
									 -->
								</select>
						  </td>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">会社<span></td> 
						  <td width="25%">
								<select size="1" name="company.id" id="mycompany" class="string_selectbox_1">
								    <option></option>
									<!-- add 2020/3/4 by sun -->
								    <c:forEach items="${companies}" var="t">
								    	<option value="${t.id }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
                        </tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">在職ステータス</span></td>
						  <td width="25%">
								<select size="1" name="work.code" class="string_selectbox_1">
									<option></option>
									 <!-- add 2020/3/4 by sun -->
								    <c:forEach items="${works }" var="t">
								   		<c:if test="${user.jobCode!='0002' and  t.code!='0003'}">
								    	<option value="${t.code }">${t.name }</option>
								    	</c:if>
								    	<c:if test="${user.jobCode=='0002'}">
								    	<option value="${t.code }">${t.name }</option>
								    	</c:if>
								    </c:forEach>
								</select>
						　</td>
						  <td width="25%" class="tdLabel"><span class="txt_normal">Billable区分<span></td> 
						  <td width="25%">
								<select size="1" name="billableFlag" class="string_selectbox_1">
								    <option></option>
									<option value="1">Billable</option>
									<option value="0">NonBillable</option>
								</select>
						  </td>
                        </tr>
                        <tr > 
                          <td  width="25%" class="tdLabel"><span class="txt_normal">入社日</span></td> 
                          <td colspan="3">
                              <input type="text"  name="startDateFrom" size="20" class="string" maxlength="8" value="" id="startDateFrom1" onkeydown="javascript:return skip2component(this);"><input type="image" src="${pageContext.request.contextPath }/img/calendar.gif" onclick="return showCalendar('startDateFrom1', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
                              <span class="txt_normal">&nbsp;～&nbsp;</span>
                              <input type="text"  name="startDateTo" size="20" class="string" maxlength="8" value="" id="startDateFrom2" onkeydown="javascript:return skip2component(this);"><input type="image" src="${pageContext.request.contextPath }/img/calendar.gif" onclick="return showCalendar('startDateFrom2', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
						  </td>
						  </tr>
						  <tbody id="t_tuizhi" style="display:${user.jobCode=='0003' or user.jobCode=='0004'or user.jobCode=='0001'? 'none':''}">
						  <tr>
                          <td  width="25%" class="tdLabel"><span class="txt_normal">退社日</span></td> 
                          <td colspan="3">
                              <input type="text" name="endDateFrom" size="20" class="string" maxlength="8" value="" id="startDateFrom3" onkeydown="javascript:return skip2component(this);"><input type="image" src="${pageContext.request.contextPath }/img/calendar.gif" onclick="return showCalendar('startDateFrom3', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
                              <span class="txt_normal">&nbsp;～&nbsp;</span>
                              <input type="text"  name="endDateTo" size="20" class="string" maxlength="8" value="" id="startDateFrom4" onkeydown="javascript:return skip2component(this);"><input type="image" src="${pageContext.request.contextPath }/img/calendar.gif" onclick="return showCalendar('startDateFrom4', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
						  </td>
						</tr>
						</tbody>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>日本経歴及びVisa情報</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">パスポート有無</span></td>
						  <td width="25%">
								<select size="1" name="passportFlag" class="string_selectbox_3">
									<option></option>
									<option value="1">有</option>
									<option value="0">無</option>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">ビザ有無</span></td> 
						  <td width="25%">
								<select size="1" name="visaFlag" class="string_selectbox_3">
									<option></option>
									<option value="1">有</option>
									<option value="0">無</option>
								</select>
						　</td>
                        </tr> 
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">日本語レベル</span></td>
						  <td width="25%">
								<select size="1" name="japanLevel.code" class="string_selectbox_3">
									<option></option>
									 <!-- add 2020/3/4 by sun -->
								    <c:forEach items="${japanese}" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">日本滞在年限</span></td> 
                          <td width="25%"><input type="text" id="year" name="yearsAtJanpan" size="4"  maxlength="4" class="string_selectbox_3" value="">&nbsp;<span class="txt_normal">年以上</span></td> 
                        </tr>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>スキル情報</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">スキル</span></td>
						  <td width="25%">
								<select size="1" name="skillCode" class="string_selectbox_3">
									<option></option>
									<!-- add 2020/3/4 by sun -->
								    <c:forEach items="${jineng}" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">スキルレベル</span></td> 
						  <td width="25%">
								<select size="1" name="skillLevelCode" class="string_selectbox_3">
									<option></option>
									<!-- add 2020/3/4 by sun -->
								    <c:forEach items="${jinengshuiping}" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
                        </tr>
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>資格情報</b></span></td></tr>
                        <tr> 
                          <td width="25%" class="tdLabel" ><span class="txt_normal">資格</span></td>
						  <td cols="3">
								<select size="1" name="certificationCode" class="string_selectbox_3">
									<option></option>
									<!-- add 2020/3/4 by sun -->
									<c:forEach items="${zige}" var="t">
								    	<option value="${t.code }">${t.name }</option>
								    </c:forEach>
								</select>
						　</td>
                        </tr>
                        <tbody id="t_qingbao" style="display:${user.jobCode=='0003' or user.jobCode=='0004' ? 'none':''}">
						<tr><td cols="4"><br></td></tr>
						<tr><td colspan="4"><span class="txt_normal"><b>JOB情報</b></span></td></tr>
						<tr>
                          <td width="25%" class="tdLabel" ><span class="txt_normal">GDCC JOB Title</span></td>
						  <td width="25%">
								<select size="1" name="jobInfo.jobTitle.code" class="string_selectbox_3">
									<option></option>
									<!-- add 2020/3/4 by sun -->
									<c:forEach items="${GDCCJOBTitle}" var="t">
									<option value="${t.code}">${t.name}</option>
									</c:forEach>
								</select>
						　</td>
                          <td width="25%"class="tdLabel"><span class="txt_normal">Delivery Capability 認定</span></td>
						  <td width="25%">
								<select size="1" name="jobInfo.deliveryCapability.code" class="string_selectbox_3">
									<option></option>
									<!-- add 2020/3/4 by sun -->
									<c:forEach items="${DeliveryCapability}" var="t">
									<option value="${t.code}">${t.name} </option>
									</c:forEach>
								</select>
						　</td>
						 </tr>
                        <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">JDDC 組織  Title</span></td> 
						  <td colspan="3">
								<select size="1" name="jobInfo.jobPosition.code" class="string_selectbox_3">
									<option></option>
									<!-- add 2020/3/4 by sun -->
									<c:forEach items="${JDDCTitle}" var="t">
									<option value="${t.code}">${t.name} </option>
									</c:forEach>
								</select>
						　</td>
                        </tr> 
                        </tbody>
                        <tbody id="t_shenpi" style="display:${user.jobCode=='0003' or user.jobCode=='0004' or user.jobCode=='0001'? 'none':''}">
						<tr><td cols="4"><br></td></tr>
                        <tr> 
                          <td width="25%"class="tdLabel" ><span class="txt_normal">承認ステータス</span></td>
						  <td cols="3">
								<select id="shenpi" size="1" name="jobInfo.confirmStatus.code" class="string_selectbox_3">
								
									<!-- add 2020/3/4 by sun -->
									<c:forEach items="${shenpizhuangtai}" var="t">
									<option value="${t.code}">${t.name} </option>
									</c:forEach>
								</select>
						　</td>
                        </tr>
                        </tbody>
                        <tr>
						  <td width="25%"></td> 
						  <td width="25%"><br><input type="submit" value="　検　索　" name="B1" class="string" ></td>						  
                          <td width="25%"><br><input type="reset" value="　ク リ ア　" name="B22" class="string"></td>
						  <td width="25%"></td> 
                        </tr> 
						 </form>
                      </table>
                    </div>
					
                 <!-- Work area end here --> 
                                        </DIV></td> 
                                </tr> 
                            </table></td> 
                    </tr> 
                    <!-- Footer area start here --> 
                    <tr> 
                        <td height="1"></td> 
                    </tr> 
                    <tr> 
                        <td height="20" bgcolor="#003366"></td> 
                    <tr> 
                        <td><div align="center" class="string"> ? Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
                    </tr> 
                    <!-- Footer area end here --> 
                </table></TD> 
        </TR> 
    </table> 
</div> 
	<script type="text/javascript">
		$("#mytype").change(function(){
		 	var type=$("#mytype").find("option:selected").text();
		 	if(type!='BP'){
		 		$("#mycompany").hide();
		 	}else{
		 		$("#mycompany").show();
		 	}
			   
		});
	
		$("input[type='submit']").click(function(){
			//检测所有条件是否全部为空
			var allEmpty = true;
			$("input[type='text']").each(function(){
				if(this.value != ''){
					allEmpty = false;
				}
			});
			$("select[id!='shenpi']").each(function(){
				if(this.value.trim() != ''){
					allEmpty = false;
				}
			});
			if(allEmpty == true){
				var rs = window.confirm("検索条件が入力されていないので、全検索してもよろしいでしょうか？");
				return rs;
			}
			
			
			var isSubmit = true;
			//每次检索清空错误消息
			$(".txt_error_message").html("");
			//判断EID是不是8位数字并且判断是不是半角
			var eid = $("#eid").val();
			var reg = new RegExp(/^\d{8}$/); 
			if(eid !='' && reg.test(eid)==false) {
				$(".txt_error_message").append("EIDに有効な値が入力されていません。8桁の値を入力してください。<br/>");
				isSubmit = false;
            }
			var str =eid.match(/[\uff00-\uffff]/g); 
			if(str!=null) {
				$(".txt_error_message").append("EIDに使用できない文字を含んでいます。半角数字を入力してください。<br/>");
				isSubmit = false;
            }
			//检测姓名是不是在规定字数以内并且判断是不是半角。
			var ename = $("#name").val();
			
			var re=/^[a-zA-Z]+$/;
			var str2 =ename.match(/[\uff00-\uffff]/g); 
			if(ename !=''){
				if( !re.test(ename)||str2!=null){
					$(".txt_error_message").append("名前に使用できない文字を含んでいます。半角英文字を入力してください。<br/>");
					isSubmit = false;
			    }
			}
			if(ename !='' && ename.length>20){
				$(".txt_error_message").append("名前に有効な値が入力されていません。20桁以内の値を入力してください。<br/>");
				isSubmit = false;
			}
			
			//判断入职和退社的时间是否格式正确，同时判断区间是否正确。
			var year1 = $("#startDateFrom1").val();
			var year2 = $("#startDateFrom2").val();
			var year3 = $("#startDateFrom3").val();
			var year4 = $("#startDateFrom4").val();

			if(year1!='' && !isDate(year1)){
				$(".txt_error_message").append("入社日(から～)に有効な日付が入力されていません。再度日付を入力してください。<br/>");
				isSubmit = false;
			}
			if(year2!='' && !isDate(year2)){
				$(".txt_error_message").append("入社日(～まで)に有効な日付が入力されていません。再度日付を入力してください。<br/>");
				isSubmit = false;
			}
			if(year3!='' && !isDate(year3)){
				$(".txt_error_message").append("退社日（から～）に有効な日付が入力されていません。再度日付を入力してください。<br/>");
				isSubmit = false;
			}
			if(year4!='' && !isDate(year4)){
				$(".txt_error_message").append("退社日（～まで）に有効な日付が入力されていません。再度日付を入力してください。<br/>");
				isSubmit = false;
			}

			if(year1!='' && year2!='' && parseInt(year1)>parseInt(year2)){
				$(".txt_error_message").append("日付の開始－終了が不正です。正しく入力してください。<br/>");
				isSubmit = false;
			}
			if(year3!='' && year4!='' && parseInt(year3)>parseInt(year4)){
				$(".txt_error_message").append("日付の開始－終了が不正です。正しく入力してください。<br/>");
				isSubmit = false;
			}
			if(year2!='' && year3!='' && parseInt(year2)>parseInt(year3)){
				$(".txt_error_message").append("日付の開始－終了が不正です。正しく入力してください。<br/>");
				isSubmit = false;
			}
			
			//判断在日年限的格式
			var regYear = /^\d{1,2}([.]\d)?$/;
			var year = $("#year").val();
			if(year !='' && regYear.test(year)==false){
				$(".txt_error_message").append("日本語滞在年限が正しい書式ではありません。再度入力してください。(例え：2、10、15.5...)	<br/>")
				isSubmit =false;
			}
			return isSubmit;
		})
		
		
		function isDate(sDate) {
		    if (!/^[0-9]{8}$/.test(sDate)) {
		        return false;
		    }
		    var year, month, day;
		    year = sDate.substring(0, 4);
		    month = sDate.substring(4, 6);
		    day = sDate.substring(6, 8);
		    var iaMonthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
		    if (year < 1700 || year > 2500) return false;
		    if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) iaMonthDays[1] = 29;
		    if (month < 1 || month > 12) return false;
		    if (day < 1 || day > iaMonthDays[month - 1]) return false;
		    return true;
		}
	</script>
		
		</body>
</html>
