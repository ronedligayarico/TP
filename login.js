$(document).ready(function () {

});

function login()
{
	var studID = document.getElementById("studID").value;
	var password = document.getElementById("password").value;
	
	// if (window.XMLHttpRequest)
	// {// code for IE7+, Firefox, Chrome, Opera, Safari
	// 	xmlhttp=new XMLHttpRequest();
	// }
	// else
	// {// code for IE6, IE5
	// 	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	// }
	// xmlhttp.onreadystatechange=function()
	// {
	// 	if (xmlhttp.readyState==4 && xmlhttp.status==200)
	// 	{	
			
	// 		document.getElementById("divLogin").innerHTML=xmlhttp.responseText;	
	// 		$("#divLogin").find("script").each(function(i) {eval($(this).text());});
			
	// 	}
	// }
	// xmlhttp.open("POST", "verifylogin.jsp", true);
	// xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	// xmlhttp.send("studID="+studID+"&password="+password);

	$.ajax({
		data: "studID="+studID+"&password="+password,
		url: "verifylogin.jsp", 
		success: function(result){
			document.getElementById("divLogin").innerHTML=result;	
		    $("#divLogin").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}
function login1()
{
	var studID1 = document.getElementById("studID1").value;
	var password1 = document.getElementById("password1").value;

	$.ajax({
		data: "studID1="+studID1+"&password1="+password1,
		url: "verifylogin1.jsp", 
		success: function(result){
			document.getElementById("divLogin").innerHTML=result;	
		    $("#divLogin").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}

function logout() 
{
	$.ajax({
		url: "verifyLogout.jsp", 
		success: function(result){
			document.getElementById("scriptRead").innerHTML=result;	
		    $("#scriptRead").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}

