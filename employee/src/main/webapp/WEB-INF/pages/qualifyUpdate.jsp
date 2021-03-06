<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="/common/calendar.jsp"></c:import> 
<html>
<head>
<title>JDDC	Internal Management	System</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
</head>
<style type="text/css">
<!--
.style4 {
	font-size: 12px;
	color: #FFFFFF;
}
.style1 {color: #FFFFFF}
.style3 {color: #FF0000}
.style5 {font-size: 12px; color: #FFFFFF; }
.style7 {color: #FFFFFF; font-size: 11px; }
.style8 {font-size: 11px}
.style15{
	font-size:12px;
	color:#FFFFFF;
}
.div_workarea_narrow {

	height: 290px;
	width: 560px;
	overflow-y:hidden;
	overflow-x:hidden;
}
.div_screen_narrow {

	height: 300px;
	width: 560px;
}
.table_border_narrow
{
    width:  560px;
    BORDER-TOP: #0033CC 1px solid;
    BORDER-LEFT: #0033CC 1px solid;
    BORDER-RIGHT: #0033CC 1px solid;
    BORDER-BOTTOM: #0033CC 1px solid;
}
-->
</style>
<body topmargin="0" leftmargin="0">
<div align="center" id="screen" class="div_screen_narrow">
	<table width="640" border="0" cellpadding="0" cellspacing="0" class="table_border_narrow">
		<tr>
			<td width="638">
				<table border="0" width="100%" height="60" bgcolor="#003366"> 
              		<tr> 
						<td width="11" rowspan="2">　</td> 
						<td width="65"><img src="img/hp_logo.gif" width="47" height="28"> <br><span class="style4">JDDC</span> </td> 
						<td rowspan="2"> 
		                  	<table height="52" width="100%" border="0"> 
			                     <tr> 
			                        <td colspan="2" height="10">
			                        <p align="right" class="titleLeft" > <font face="Cooper	Black">JDDC	Internal Management	System</font></p></td>  
			                     </tr> 
			                     <tr> 
									<td width=20%>&nbsp;</td> 
			                        <td> <p class="titleCenter"> <font face="Times New Roman">资格认证情报更新<b></b></font></p></td> 
			                     </tr> 
				  			</table>
				  		</td> 
            		</tr> 
            	</table> 
				<table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
	            	<tr bgcolor="#85B7FA"> 
	                	<td>&nbsp;</td> 
	                  	<td width="150" class="txt_normal">操作者：${user.eid }</td> 
	                  	<td width="60" class="txt_normal">&nbsp;</td> 
	              	</tr> 
	         	</table> 
				<HR>
				<div class="div_workarea_narrow style15"> 
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td>
		        			<table width="100%"  border="0" cellspacing="0" cellpadding="0" >
	                  			<tr>
		                        	<td bgcolor="#000066"><span class="style15">资格情报更新</span></td>
		                      	</tr>
								<tr> 
									<td height="5"></td> 
								</tr> 
								<tr> 
									<td><div style="OVERFLOW-Y: auto; OVERFLOW-X: auto; HEIGHT: 30px"> 
											<span class="style3 style8">错误信息1<BR> 
															错误信息2</span> 
										</div>
									</td> 
								</tr> 
                        	</table>
						</td>
					</tr>
					<tr>
						<td>
							<form action="" method="post">
							<table border="0" width="555" cellspacing="0" cellpadding="0" height="100%">
						 		<tr>
						 			<td>
										<table border="0" width="539" cellspacing="1" cellpadding="1">
										  <tr align="center" class="trHeader">
										    <td width="6%" ><span class="txt_normal style1">选</span></td>
										    <td width="6%" align="center"><span class="txt_normal style1">番号</span></td>
										    <td width="60%" align="center" ><span class="txt_normal style1">资格认证</span></td>
										    <td width="28%" align="center"><span class="txt_normal style1">取得日期</span></td>
										  </tr>
										</table>
						  			</td>
						  		</tr>
						  		<tr>
						  			<td>
										<div style="overflow-y:scroll;overflow-x:hidden;height:100px;">
										<table border="0" width="539" cellspacing="1" cellpadding="1" id="info">
										<c:forEach items="${Allcertifications }" var="certification" varStatus="vs">
											<tr class="${vs.count%2==0?'trEven':'trOdd' }">
					                            <td width="6%" align="center"><input name="checkbox" type="checkbox" value="${certification.code}" ></td>
					                            <td width="6%" align="center" ><span class="txt_normal">0${vs.count }</span></td>
					                            <td width="60%"><span class="txt_normal">${certification.name}</span></td>
					                            <td width="28%" align="center">
					                            	<input id="certificationDate" type="text" name="T1242" size="8" maxlength="8"  value=""><input type="image" src="img/calendar.gif" onclick="return showCalendar('certificationDate', 'y/mm/dd');" onkeydown="javascript:return skip2component(this);"/>
												</td>
											</tr>
										</c:forEach>						  
	                    				</table>
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<table width="554" border="0" cellpadding="0" cellspacing="0">
											<tr><td cols="6"><br></td></tr>
											<tr>
												<td width="156"></td>
												<td width="34">
													<input type="button" value="　更 新　" name="B3" class="string" id="update"></td>
												<td width="136"></td>
												<td width="40">
													<input type="button" value="　返 回　" name="B4" class="string" id="close"></td>
												<td width="147"></td>
												<td width="41"></td>
										    </tr>
				  						</table>
				  					</td>
				  				</tr>		
				  			</table>
				  			</form>
				  		</td>
					</tr>
				</table>
				</div>
			</td>
		</tr>
	</table>
	<table border="0" width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td height="1"></td>
		</tr>
		<tr>
			<td height="18" bgcolor="#003366"></td>
		</tr>
		<tr> 
			<td><div align="center" class="string"> © Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
		</tr>
	</table>
</div>

</body>
<script type="text/javascript">
	var arr = window.opener.dialogArguments.values;
	console.log(arr);
	
	for(var i=0; i< arr.length; i++){
		var data = arr[i];
		$("#info tr").each(function(){
			var ocheck = this.getElementsByTagName("input")[0];
			var cdate = this.getElementsByTagName("input")[1];
			if(ocheck.value == data.certificationCode){
				ocheck.checked = true;
				cdate.value=data.certificationDate;
			}
		});
		
	}
	
	$("#update").click(function(){
		var arr = new Array();
		$("#info tr").each(function(){
			var ocheck = this.getElementsByTagName("input")[0];
			var cdate = this.getElementsByTagName("input")[1];
			var td = this.getElementsByTagName("td")[2];
			if(ocheck.checked == true){
				var certification1 = {"certificationCode":ocheck.value, "certificationName":td.firstChild.innerText, "certificationDate":cdate.value};
				arr.push(certification1);
			}
		});
		window.opener.changcertification(arr);
		window.close();
		
	});
	
	$("#close").click(function(){
		window.close();
	});
	
	window.onunload=function(){
		window.opener.hasOpenWindow = false;
	};
</script>
</html>