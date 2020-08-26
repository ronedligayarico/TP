'use strict'
$(document).ready(function() {

$('#categoryTable').load('/TP/components/category/categoryTBL.jsp');
// $(document).on('click', '.click', function(){
// click();
// })

})

function clickMe() {

	swal("Warning!","Under Constructiwwon!","warning");
}
function del(category_code)
{
	$.ajax({
		data: "category_code="+category_code,
		url: "components/category/deleteCat.jsp", 
		success: function(result){
			document.getElementById("thisscript").innerHTML=result;	
		    $("#thisscript").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}
function viewCat(category_code) 
{
	$.ajax({
		data: "category_code="+category_code,
		url: "components/category/viewCat.jsp", 
		success: function(result){
			document.getElementById("app").innerHTML=result;	
		    // $("#categoryModal").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}

function addCategory() 
{

	$.ajax({
		data: null,
		url: "components/category/addCategory.jsp", 
		success: function(result){
			document.getElementById("categoryModal").innerHTML=result;	
		    $("#categoryModal").find("script").each(function(i) {eval($(this).text());});
            $('#categoryModal').modal({
            backdrop: 'static',
            keyboard: false
        });
	  	}
	});
}

function save() 
{

	var code = document.getElementById("code").value;
	var title = document.getElementById("title").value;
	var yearlvl = document.getElementById("yearlvl").value;
	var semester = document.getElementById("semester").value;

if(code == "")
{
	swal("Warning!","Please Type Subject Code","warning")
}
else if(title == "")
{
	swal("Warning!","Please Type Subject Title","warning")
}
else if(yearlvl == 0)
{
	swal("Warning!","Please Choose Year Level","warning")
}
else if(semester == 0)
{
	swal("Warning!","Please Choose semester","warning")
}else
{

	$.ajax({
		data: "code="+code+"&title="+title+"&yearlvl="+yearlvl+"&semester="+semester,
		url: "components/category/saveCat.jsp", 
		success: function(result){
			document.getElementById("thisscript").innerHTML=result;
	        $("#thisscript").find("script").each(function(i){
             eval($(this).text());
            });	
	  	}
	});
}
}

function reloadCategory() 
{	
	$.ajax({
		data: null,
		url: "/TP/components/category/category.jsp", 
		success: function(result){
		document.getElementById("app").innerHTML=result;
	 	$("#categoryTable").load('/TP/components/category/categoryTBL.jsp');
	  	}
	});
}