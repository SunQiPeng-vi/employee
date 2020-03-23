<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Demo</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<style type="text/css">
<!--
.style13 {
	font-size: 60px;
	color: #0000CC;
}
-->
</style>
</head>
<body > 

<SCRIPT language=javascript src="${pageContext.request.contextPath }/js/common.js"></SCRIPT> 
<div align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0"> 
    <TR> 
        <TD> <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border"> 
                <tr> 
                    <td> <table border="0" width="100%" height="60" bgcolor="#003366"> 
                            <tr> 
                                <td width="11" rowspan="2">　</td> 
                                <td width="65"><img src="${pageContext.request.contextPath }/img/hp_logo.gif" width="47" height="28"> <br><span class="titleJDDC">JDDC</span> </td> 
                                <td rowspan="2"> <table height="52" width="100%" border="0"> 
                                        <tr> 
                                            <td	colspan="2"	height="10">
                                            <p align="right" class="titleLeft" > <font face="Cooper	Black">JDDC	Internal Management	System</font></p></td>  
                                        </tr> 
                                        <tr> 
                                          <td	width=40%>&nbsp;</td> 
                                            <td> <p class="titleCenter"> <font face="Times New Roman"> <b>Menu</b></font></p></td> 
                                        </tr> 
                                    </table></td> 
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
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/empRegister" target="_self">员工信息登录</a></span></td> 
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
                                <td width="750" align="center" valign="top"> <div class="div_workarea"> 
                                        <!-- Work area start here --> 
                                        <table width="100%"  border="0" cellspacing="1" cellpadding="1"> 
                                            <tr> 
                                                <td height="150" colspan="3">&nbsp;</td> 
                                            </tr> 
                                            <tr> 
                                                <td width="22%" height="120">&nbsp;</td> 
                                                <td width="51%"><div align="center"><span class="style13">Welcome！</span></div></td> 
                                                <td width="27%">&nbsp;</td> 
                                            </tr> 
                                            <tr> 
                                                <td height="130" colspan="3">&nbsp;</td> 
                                            </tr> 
                                        </table> 
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
        <td><div align="center" class="string"> © Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
    </tr> 
    <!-- Footer area end here --> 
     </table> 
     </TD> 
      </TR> 
</table> 
</div> 
</body>
</html>
