<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html>
<head>
<title>Demo</title>
<meta http-equiv="Content-Type"	content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<SCRIPT	language=javascript	src="js/common.js"></SCRIPT>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>

<style type="text/css">
<!--
.style4	{
	font-size: 12px;
	color: #FFFFFF;
}
.style5	{
	color: #FFFFFF;
	font-size: 24px;
}
.style6	{color:	#000000}
.style8	{
	font-size: 14px;
	color: #FF0000;
}
-->
</style>
</head>
<body >	
<div width="100%" align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0">	
	<TR>
		<TD><table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border_nowidth">
			<tr>
				<td	height="576">
					<table border="0" width="100%" height="60" bgcolor="#003366">
						<tr> 
							<td	width="11" rowspan="2">&nbsp;</td> 
							<td	width="69"><img	src="img/hp_logo.gif" width="47" height="28"><br><span class="titleJDDC">JDDC</span> </td>	
							<td	 rowspan="2"> 
								<table height="50" width="100%"	> 
									<tr> 
										<td	colspan="2"	height="10">
											<p align="right" class="titleLeft" > <font face="Cooper	Black">JDDC	Internal Management	System</font></p></td> 
									</tr> 
									<tr> 
										<td	width=30%>&nbsp;</td> 
										<td> <p	class="titleCenter"> <font face="Times New Roman"> <b>ユーザ認証</b></font></p></td>	
									</tr> 
								</table>
							</td> 
						</tr> 
					</table> 
					<table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
						<tr	bgcolor="#85B7FA"> 
							<td>&nbsp;</td>	
							<td	width="150"	class="txt_normal">&nbsp;</td> 
							<td	width="60" class="txt_normal"><div align="right"></div></td> 
						</tr> 
					</table> 
					<HR> 
					<table border="0" cellspacing="0" cellpadding="0" width="100%">	
						<tr> 
							<td	valign="top">
				 			<div align="center" id="workarea">	
								<!-- work area start here --> 
								<table width="100%"	 border="0"	cellspacing="1"	cellpadding="1"> 
									<tr> 
										<td	width="27%"	height="100">&nbsp;</td> 
										<td	width="37%">&nbsp;</td>	
										<td	width="36%">&nbsp;</td>	
									</tr> 
									<tr> 
										<td	height="200">&nbsp;</td> 
										<td> <form name="form1"	method="post" action="${pageContext.request.contextPath }/login"> 
											<table width="100%"	height="100%"  border="0" cellpadding="0" cellspacing="0"> 
												<tr ><span class="txt_error_message" id="txt_error_message">
														<!-- 错误信息1<BR>  -->
														</span>
												</tr>
												<tr>
													<td	height="8" colspan="4" bgcolor="#666666"><span class="style5">ログオン</span></td>
												</tr> 
												<tr	bgcolor="#CCCCFF"> 
													<td	width="10%" height="17" >&nbsp;</td> 
													<td	width="25%">&nbsp;</td>
													<td	width="60%">&nbsp;</td>
													<td	width="5%">&nbsp;</td>
												</tr> 
												<tr	bgcolor="#CCCCFF" > 
													<td height="22">&nbsp;</td> 
													<td><span class="style6">ユーザ名 : </span> </td>
													<td><input name="UID"	id ="username" type="text"	class="string" size="20" maxlength="8"></td>
													<td>&nbsp;</td>
												</tr> 
												<tr> 
													<td	height="22"	colspan="4"	bgcolor="#CCCCFF">&nbsp;</td> 
												</tr> 
												<tr	bgcolor="#CCCCFF" > 
													<td height="22">&nbsp;	 </td> 
													<td><span class="style6">パスワード : </span></td>
													<td><input name="pass" id="password" type="password" class="string" size="20" maxlength="20"></td>
													<td>&nbsp;</td>
												</tr> 
												<tr> 
													<td	height="20"	colspan="4"	bgcolor="#CCCCFF">&nbsp;</td> 
												</tr> 
												<tr> 
													<td	height="37"	colspan="4"	bgcolor="#CCCCFF"><div align="center">
														<input name="Button" id="logon" type="button" value="ログオン">
													</div></td>	
												</tr>
												 
											</table> 
										</form></td> 
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td	height="100">&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr> 
								</table> 
								<!-- Work area end here	-->	
								</DIV></td>	
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</TD>
	</TR>
	   <!--	Footer area	start here --> 
	<tr> 
		<td	height="1"></td> 
	</tr> 
	<tr> 
		<td	height="20"	bgcolor="#003366"></td>	
	<tr> 
		<td><div align="center"	class="string">	© Copyright	2007 Hewlett-Packard TSG-JDDC </div></td> 
	</tr> 
	<!-- Footer	area end here --> 
</table> 
</div> 
<script type="text/javascript">
		
		$("#logon").click(function(){
			
		$("#txt_error_message").html("");
		var isSubmit = true;
		var username=$("#username").val();
		var password=$("#password").val();
		if(username==""||password==""){
			$("#txt_error_message").append("ユーザ名とパスワードは必須です。ご入力ください。<br/>");
			return false;
		}
		else{
			$.ajax({
                type:'post',
                url:'login',
                dataType:"json",//注意使用的是打他dataType，而不是Content-Type
                async: true,
                data:{username:username,password:password},
                success:function(data){
                   if(data==null){
                	   $("#txt_error_message").append("ユーザ名またはパスワードが存在していません。ご確認ください。<br/>");
           			return false;
                   }
                   else{
                       window.location.href ="mainmenu";
                   }
                },
                error:function(){
                	$("#txt_error_message").append("ERROR。<br/>");
                }
            });
		}
		
		return isSubmit;
		});
	</script>
</body>

</html>
