<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>   
<!DOCTYPE html>
<html>
<head>
<title>社員情报検索結果一覧</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
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
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
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
                                            <td> <p class="titleCenter"> <font face="Times New Roman"> <b>社員情報検索結果一覧</b></font></p></td> 
                                        </tr> 
                                    </table></td> 
                            </tr> 
                        </table> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
                                <tr bgcolor="#85B7FA"> 
                                    <td>&nbsp;</td> 
                                    <td width="150" class="txt_normal">操作者：${user.eid }</td> 
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
                                    <td width="750" align="center" valign="top"> 

					<table width="100%"  cellspacing="1"> 
						<tr> 
							<td class="tdFuncTitle">検索結果一覧</td> 
						</tr> 
					</table> 
					<table width="100%"  cellspacing="1" > 
						<tr> 
							<td class="txt_normal">${page.total }件中${page.startRow }－${page.endRow }件を表示</td>
							<td align="right" class="txt_normal">&nbsp;&nbsp;
							<a class="first" href="${pageContext.request.contextPath }/pageEmp?pagenum=1">最初</a>｜
							<a class="first" href="${pageContext.request.contextPath }/pageEmp?pagenum=${page.prePage}">前</a>｜
							<a class="last" href="${pageContext.request.contextPath }/pageEmp?pagenum=${page.nextPage}">次</a>｜
							<a class="last" href="${pageContext.request.contextPath }/pageEmp?pagenum=${page.pages}">最後</a>&nbsp;</td> 
							</td> 
						</tr> 
					</table>

				

                    <table border="0" cellspacing="0" cellpadding="0" align="left">
						<tr><td>
						<!-- Work area start here --> 
						<div class="div_workarea_searchdetail">
						<table border="0" cellspacing="0" cellpadding="0" align="left">

                      <tr align="left"> 
                        <td>
						  <table border="0" cellspacing="1" cellpadding="1"> 
                            <tr class="trHeader">
                              <td nowrap width="25" align="center"class="txt_table_head" rowspan="2">選</td>
							  <td nowrap width="80" align="center"class="txt_table_head" rowspan="2">EID</td>
							  <td nowrap width="240" align="center"class="txt_table_head" colspan="2">社員名</td>
                              <td nowrap width="30" align="center" class="txt_table_head" rowspan="2">性別</td> 
                              <td nowrap width="115" align="center" class="txt_table_head" rowspan="2">電話番号</td>
							  <td nowrap width="120" align="center" class="txt_table_head" rowspan="2">緊急連絡番号</td>
							  <td nowrap width="50" align="center" class="txt_table_head" rowspan="2">サイト</td>
							  <td nowrap width="80" align="center" class="txt_table_head" rowspan="2">入社日</td>
							  <td nowrap width="60" align="center" class="txt_table_head" rowspan="2">在職状態</td>
							  <td nowrap width="70" align="center" class="txt_table_head" rowspan="2">部署</td>
							  <td nowrap width="50" align="center" class="txt_table_head" rowspan="2">HP/BP</td> 
							 </tr>
							 <tr  class="trHeader">
							  <td nowrap width="120" align="center" class="txt_table_head">(ローマ字)</td>
							  <td nowrap width="120" align="center" class="txt_table_head">(中文名)</td>
							  </tr>
                          </table>
						</td> 
                      </tr>
					
                      <tr align="left">
                        <td><form id="form1" name="form1" method="post" action="">

						<table id="info" border="0" cellpadding="1" cellspacing="1">
							<c:forEach items="${page.list }" var="emp" varStatus="vs">
						    <tr class="${vs.count%2==1? 'trOdd':'trEven' }">
                              <td nowrap width="25" align="center" ><input name="eid" type="radio" value="${emp.eid }">
                              <input type="hidden" value="${emp.managerEid} " disabled="disabled"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="empByeid?eid=${emp.eid }">${emp.eid }</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">${emp.name }</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">${emp.nameCn }</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">${emp.gender=='M'?'男':'女' }</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">${emp.telNo }</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">${emp.emergencyTelNo }</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">${fn:substring(emp.site.name, 0, fn:indexOf(emp.site.name, "-"))}</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">${emp.startDate }</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">${emp.work.name }</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">${emp.department.name }</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">${emp.type.name }</span></td>
                            </tr>
                            </c:forEach>
							 
                            
                          </table>
						  </form>
						</td>
					  </tr>

					  </table>
					  <!-- Work area end here --> 
					  </div></td></tr>

					  <tr>
					    <td><br>
						  <table width="711" border="0" align="left" cellpadding="1" cellspacing="1">
                            <tr> 
                              <td width="70"></td> 
                             <!-- <td width="138"><input id="info" name="B2" type="button" class="string" onClick="openWindow('employeReferto1.htm')" value="　　详　细　　"></td>  -->
							  <td width="138"><input id="update" name="B2" type="button" class="string" onclick="EmpUpdate"  value="　　更　新　　"></td> 
							  <td width="138"><input id="out" name="B2" type="button" class="string" onClick="EmpOut" value="　　出　力　　"></td>
                              <td width="218"><input id="recheck"name="B3" type="button" class="string" onClick="openWindow('employeQuery.htm')" value="　　再検索　　"></td>
                            </tr> 
                          </table>
						</td>
					  </tr>
				    </table>
								 </td> 
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
                        <td><div align="center" class="string"> © Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
                    </tr> 
                    <!-- Footer area end here --> 
                </table></TD> 
        </TR> 
    </table> 
</div> 
</body>
<script type="text/javascript">

	$("#update").click(function(){
		var newUrl = '${pageContext.request.contextPath }/empupdateByeid';
		$("#form1").attr('action',newUrl);
		$("#form1").submit();
	});
	
	$("#out").click(function(){
		$("#form1").submit();
	});
	
	$(document).ready(function(){
		var role = ${user.jobCode};
		if(role == "0004" || role == "0003"){
			$("#update").hide();
			$("#out").hide();
		}else if(role == "0001"){
			$("#out").hide();
		}
	});

	$(".first").each(function(){
		var first = ${page.isFirstPage};

		if(first){
			$(this).removeAttr("href");
		}
	});

	$(".last").each(function(){
		var last = ${page.isLastPage};
		if(last){
			$(this).removeAttr("href");
		}
	});
	
	$("#info input[type='radio']").each(function(){
		var eid = ${user.eid};
		var role = ${user.jobCode};
		if(role == "0004" || role == "0003"){
			$(this).hide();
			var obja = $(this).parent().next().children().children();
			if(obja.html() != eid){
				$(obja).removeAttr("href");
			}
		}else if(role == "0001"){
			var mgrEid = $(this).next().val();
			console.log(mgrEid);
			if(mgrEid != eid){
				$(this).hide();
			}
		}
	});
	
	

</script>
</html>

