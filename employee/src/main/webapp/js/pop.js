
	window.showModalDialog = function(url,dialogArguments,features){
		var name = dialogArguments.windowOpen || '_blank';
		if(name=='_blank' && window.hasOpenWindow){
			//当窗口名为_blank时,再次调用不会占用未关闭的_blank子窗,需要手动避免弹出多个窗口
			window.myNewWindow.focus();
			return;
		}
		if(features)
			features = "modal=yes,"+features.replace(/(dialog)|(px)/ig,"").replace(/;/g,',').replace(/\:/g,"=");
		var left = (window.screen.width - parseInt(features.match(/width[\s]*=[\s]*([\d]+)/i)[1]))>>1;
		var top = (window.screen.height - parseInt(features.match(/height[\s]*=[\s]*([\d]+)/i)[1]))>>1;
		features+=',left='+left+',top='+top;
		
		window.myNewWindow =window.open(url,name,features);
		window.hasOpenWindow = true;
		if(dialogArguments){
			//open()不支持传递参数，通过这种方式向子页面传递参数，因为打开页面速度远远慢于本方法执行速度，因而子页面总能获得传递的参数,
			//也可在子窗load事件发生后使用myNewWindow.postMessage(dialogArguments,url),但在子窗还未load时监听可能无效,但它可以突破同源限制
			window.dialogArguments=dialogArguments;
		}
	};
