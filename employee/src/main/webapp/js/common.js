var gotoTempPage = true;
window.top.submitFlag = true;
window.document.onkeydown = KeyControl;
//window.document.onload = clearSubmit;
//window.document.onContextmenu = false;

function KeyControl(){
    var keycode = event.keyCode;
    var srcElement = event.srcElement;
    //not focus on input-text
    var disableflg = checkDisable(srcElement);

    // 8:Backspace
    // 116: F5
    // 122: F11
    // event.returnValue = false;
    if (keycode == 8 ){
        if(disableflg == true){
            event.keyCode = 0;
            event.returnValue = false;
        }
    } else if (keycode == 116  || keycode == 122){
        event.keyCode = 0;
        event.returnValue = false;
    }
    // 37: left arrow
    if(window.event.altKey && keycode == 37){
        event.returnValue = false;
        //event.cancelBubble = true;

    }
}

function MouseControl(){
    var keycode = event.button;
    var srcElement = event.srcElement;
    //not focus on input-text
    var disableflg = checkDisable(srcElement);
    // 2:    MouseRight 
    if (keycode == 2){
        if(disableflg == true){
            return false;
        }
    }
}

function checkDisable(srcElement){
    var disableflg = true;

    //not focus on input-text
    if(srcElement.tagName == "INPUT"){
        if(srcElement.type == "text" || srcElement.type == "password" || srcElement.type=="file"){
            disableflg = false;
        }
    }
    if(srcElement.tagName == "TEXTAREA" && srcElement.readOnly != true){
	   	disableflg = false;	   	
    } 
	return disableflg;
}
function clearSubmit() {
    window.top.submitFlag = true;
}

function checkSubmit() {
    if (window.top.submitFlag) {
        window.top.submitFlag = false;
        return true;
    } else {
        return false;
    }
}

function reset() {
  var frm = document.forms[0];
  frm.elements[0].value="";
  frm.elements[1].value="";
  return false;
}

function resetForm(currentPage, lastResetPage) {
    if (currentPage >= lastResetPage) {
        for(i=1; i < document.forms[0].length; i++) {
            if (document.forms[0].elements[i].name =="form:token") {
                continue;
            }
            if (document.forms[0].elements[i].checked == true) {
                document.forms[0].elements[i].checked = false;
                continue;
            }
            document.forms[0].elements[i].value = "";
        }
    }
}
function clear_form() {

}

function clear_formResult() {

}

function windowOpenTemp(){
    if (gotoTempPage) {
        window.open("PR99999A.faces" ,"temppr", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=1014,height=703,top=0,left=0");
        return false;
    } else {
        return true;
    }
}

function windowOpenTempET(){
    if (gotoTempPage) {
        window.open("ET99999A.faces" ,"tempet", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=1014,height=703,top=0,left=0");
        return false;
    } else {
        return true;
    }
}
function checkSubmitForLink(link) {
    if (checkSubmit()) {
        link.onclick();
    }
    link.onclick="";
}

function restoreVal(argKeys, argVals) {
	if (argKeys =='' || argVals =='' || argKeys =='[]' || argVals =='[]') {
		return;
	}
	var listKey = argKeys.split(",");
	var listValue = argVals.split(",");
	var count = listKey.length;
	for(i = 0; i < count; i++) {
		var realValue = listValue[i];
			realValue = realValue.replace('[','');
			realValue = realValue.replace(']','');
			realValue = realValue.replace(' ','');
			realValue = replaceAll(realValue,'*',',');
			realValue = replaceAll(realValue,'<BR>','\r\n');
		var realKey = listKey[i];
			realKey = realKey.replace('[','');
			realKey = realKey.replace(']','');
			realKey = realKey.replace(' ','');
		if(document.forms[0].elements[realKey] != null){
			if(realKey == 'form:explainAttendClass' && realValue != '01') {
				continue;
			}
			if(realKey == 'form:outSide' && realValue != '01') {
				continue;
			}
			document.forms[0].elements[realKey].value = realValue;
		}
	}
} 

/**
 * save the selected label from selectMenu. Add by Alex Z
 */
function saveLabel(source, targetId) {
	var realId = source.id.substring(0, source.id.lastIndexOf(":")+1) + targetId;
	var target = document.getElementById(realId);
	target.value = getRealLabel(source.options[source.selectedIndex].text);
}
function getRealLabel(sourceLabel) {
	sourceLabel = sourceLabel.substring(sourceLabel.indexOf(":") + 1);
	sourceLabel = sourceLabel.substring(sourceLabel.indexOf(" ") + 1);
	return sourceLabel;
}
function restoreVal(argKeys, argVals) {
	if (argKeys =='' || argVals =='' || argKeys =='[]' || argVals =='[]') {
		return;
	}
	var listKey = argKeys.split(",");
	var listValue = argVals.split(",");
	var count = listKey.length;
	for(i = 0; i < count; i++) {
		var realValue = listValue[i];
			realValue = realValue.replace('[','');
			realValue = realValue.replace(']','');
			realValue = realValue.replace(' ','');
			realValue = replaceAll(realValue,'*',',');
			realValue = replaceAll(realValue,'<BR>','\r\n');
		var realKey = listKey[i];
			realKey = realKey.replace('[','');
			realKey = realKey.replace(']','');
			realKey = realKey.replace(' ','');
			
		if(document.forms[0].elements[realKey] != null){
			if(realKey == 'form:explainAttendClass' && realValue != '01') {
				continue;
			}
			if(realKey == 'form:outSide' && realValue != '01') {
				continue;
			}
			/* Edited by Alex Z for radio button */
			if (document.forms[0].elements[realKey].length != undefined && document.forms[0].elements[realKey].length>0) {
				if (document.forms[0].elements[realKey][0].type=="radio") {
					for (var j=0; j<document.forms[0].elements[realKey].length; ++j) {
						if (realValue==document.forms[0].elements[realKey][j].value) {
							document.forms[0].elements[realKey][j].checked = true;
						}
					}
				}
			} else {
				document.forms[0].elements[realKey].value = realValue;
			}
			/* Edited by Alex Z for radio button End */					
		}
	}
}
function replaceAll(str,oldStr,reStr){
    return str.split(oldStr).join(reStr);
}  

function selectAll(tableId, colNo, isSelected) {
	isSelected = isSelected == undefined ? true : isSelected;
	var table = document.getElementById('form:' + tableId);
	var rows = table.rows;
	for (var i = 1; i < rows.length; i++) {
		var childNodes = rows[i].cells[colNo].childNodes;
		for (var j = 0; j < childNodes.length; j++) {
			if (childNodes[j].type == 'checkbox') {
				childNodes[j].checked = isSelected;
			}
		}
	}
	return false;
}

function cmSelectSyoriKubun(idoClsIndex, idoDetailClsId)  {
	var comboMap = getComboMap();
	idoClsIndex = idoClsIndex == '' ? 0 : idoClsIndex;
	idoClsIndex = parseInt(idoClsIndex, 10);
	var options = comboMap[idoClsIndex];
	var idoDetailNode = document.getElementById('form:' + idoDetailClsId);
	idoDetailNode.options.length = 0;
	for (var i = 0; i < options.length; i++) {
		idoDetailNode.options[i] = options[i];
	}
}

function Subopen(id, returnField){
    window.open("CM99101A.faces?id=" + id + "&returnField=" + returnField,"sub","width=400,height=300,scrollbars=yes,resizable=no,status=yes");
}


function copyToken(tokenLogicId) {
	var tokenId = null;
	if (undefined != tokenLogicId && null != tokenLogicId && "" != tokenLogicId) {
		tokenId = tokenLogicId;
	} else {
		tokenId = "hiddenToken";
	}
	// find token
	var token = null;
	for (var i=0; i < document.forms.length; ++i ) {
		token = document.forms[i][document.forms[i].id+":"+tokenId].value;
		if (null != token && "" != token) {
			break;
		}
	}
	// copy token
	for (i=0; i < document.forms.length; ++i ) {
		document.forms[i][document.forms[i].id+":"+tokenId].value = token;
	}
}
function checkCSVSubmit() {
	if (window.top.submitFlag) {
		setTimeout('window.top.submitFlag = true;', 20000);
	}
	return checkSubmit();
}
function checkPDFSubmit() {
	if (window.top.submitFlag) {
		setTimeout('window.top.submitFlag = true;', 10000);
	}
	return checkSubmit();
}
function checkSessionExpired() {
	var opener = window.opener;
	if (null!=opener && "CM"==opener.name) {
		if (undefined!=opener.document.forms[0] && null!=opener.document.forms[0]) {
			opener.document.forms[0].submit();
			window.close();
		}
	}
}

// For JIMS 2007/07/05
function openPopUpWindowSmall(URL) {
    window.open(URL, '_blank',
    "top=0,left=10,width=562,height=433,menu=off,location=no,menubar=no,resizable=no,scrollbars=no,toolbar=no,status=no");
}

function openPopUpWindow(URL) {
    window.open(URL, '_blank',
    "top=0,left=10,width=994,height=680,menu=off,location=no,menubar=no,resizable=no,scrollbars=no,toolbar=no,status=no");
}

function openWindowParent(URL) {
    var upwindow=window.parent;
    alert(upwindow);
    upwindow.open(URL, '_self');
}

function openWindow(URL) {
    window.open(URL, '_self');
}

function openResInputAssist(rtnDisplayItem, rtnHiddenItem, mode) {
	args = new Array();
	args[0] = mode;
	val = showModalDialog("ResourceSearchSupport.htm", args,
    "dialogHeight:433px;dialogWidth:562px;status:no;scroll:no");
    document.getElementById(rtnDisplayItem).value='zzz';
    document.getElementById(rtnHiddenItem).value='20010987';
    return false;
}

function JSAlert(message,form,value){
	alert(message);
	JSSubmit(form,value);
}

function JSConfirm(message,form,value){
	if(confirm(message)){
		JSSubmit(form,value);
	}else{
		return false ;
	}
}

function checkbox_checkedAll(value)
{		
	var	el = document.getElementsByTagName('input');
	var	len	= el.length;
	for(var	i=0; i<len;	i++)
	{
		if((el[i].type=="checkbox")&& (el[i].name).indexOf(value)>-1)
		{
			el[i].checked =	true;
		}
	}
	return false;
}

function checkbox_clearAll(value)
{
	var	el = document.getElementsByTagName('input');
	var	len	= el.length;
	for(var	i=0; i<len;	i++)
	{
		if((el[i].type=="checkbox")&& (el[i].name).indexOf(value)>-1)
		{
			el[i].checked =	false;
		}
	}
}

// For JIMS 2007/07/07
// Update by 2007/07/10
// Update by 2007/07/11
function skip2component(curElement){
  if(event.keyCode==13){
  	if(curElement.type == "submit"){
		return true;
	}else{
		//TAB
  		event.keyCode=9;
  	}		
  }
}

// For JIMS 2007/07/12
function  resetAll(name) {
	var check = document.getElementsByName(name);   
	for(var i=2;i<check.length; i ++ ){
		check[i].checked = false;   
	}   
}