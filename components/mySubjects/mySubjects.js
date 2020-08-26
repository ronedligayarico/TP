'use strict'
$(document).ready(function() {



})

function attention(category_code) 
{
	$.ajax({
		data: "category_code="+category_code,
		url: "components/mySubjects/attentionModal.jsp", 
		success: function(result){
			document.getElementById("subjectModal").innerHTML=result;	
		    $("#subjectModal").find("script").each(function(i) {eval($(this).text());});
            $('#subjectModal').modal({
            backdrop: 'static',
            keyboard: false
        });
	  	}
	});
}

function takeExam(category_code) 
{
	if($('input[name=acceptthis]').prop("checked"))
	{
		$('#subjectModal').modal('hide');
		$.ajax({
			data: "category_code="+category_code,
			url: "components/exam/exam.jsp", 
			success: function(result){
				document.getElementById("app").innerHTML=result;	
			    // $("#app").find("script").each(function(i) {eval($(this).text());});

		  	}
		});
	}else
	{
		swal("Warning", "Please check the box for the Privacy Terms & Conditions!", "warning");
	}
}

function submitEx(numCount,category_code) 
{   
	 var corList = [];
    $(".corAns").each(function(){
        corList.push($(this).val());
    });
    var corList = corList.toString();
    var answerList = [];
		for(var i=1; i<=numCount; i++)
		{
		        answerList.push($('input[name='+i+']:checked').val());
		}
			$.ajax({
				data: "numCount="+numCount+"&category_code="+category_code+"&answerList="+answerList+"&corList="+corList,
				url: "components/exam/examScore.jsp", 
				success: function(result){
					document.getElementById("ehhRead").innerHTML=result;	
				    $("#ehhRead").find("script").each(function(i) {eval($(this).text());});

			  	}
			});
}

function gotoResult(numCount,category_code) 
{   

	    var corList = [];
	    $(".corAns").each(function(){
	        corList.push($(this).val());
	    });
	    var corList = corList.toString();
	    var answerList = [];
			for(var i=1; i<=numCount; i++)
			{
			        answerList.push($('input[name='+i+']:checked').val());
			}
		$.ajax({
			data: "category_code="+category_code+"&corList="+corList+"&answerList="+answerList,
			url: "components/exam/examResult.jsp", 
			success: function(result){
				document.getElementById("app").innerHTML=result;	
			    // $("#ehhRead").find("script").each(function(i) {eval($(this).text());});
		  	}
		});
}