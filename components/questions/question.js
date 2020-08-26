'use strict'
$(document).ready(function() {

$('#questionTable').load('/TP/components/questions/questionTBL.jsp');
// $(document).on('click', '.click', function(){
// click();
// })
})
function clickMe() {

	alert("Under Constructioqweqwewqeqwn!");
}
function viewQuestion(question_id) 
{
	$.ajax({
		data: "question_id="+question_id,
		url: "components/questions/viewQuestion.jsp", 
		success: function(result){
			document.getElementById("addQstnModal").innerHTML=result;	
		    $("#addQstnModal").find("script").each(function(i) {eval($(this).text());});
            $('#addQstnModal').modal({
            backdrop: 'static',
            keyboard: false
        });
	  	}
	});
}
function del(question_id)
{
	$.ajax({
		data: "question_id="+question_id,
		url: "components/questions/deleteQue.jsp", 
		success: function(result){
			document.getElementById("thisscript").innerHTML=result;	
		    $("#thisscript").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}
function addQstn()
{
	$.ajax({
		data: null,
		url: "components/questions/addQuestion.jsp", 
		success: function(result){
			document.getElementById("addQstnModal").innerHTML=result;	
		    $("#addQstnModal").find("script").each(function(i) {eval($(this).text());});
            $('#addQstnModal').modal({
            backdrop: 'static',
            keyboard: false
        });
	  	}
	});
}
function updateAns(question_id,session_user_id) 
{
	var ansList = [];
    $(".answ").each(function(){
        ansList.push($(this).val());
    });
    var answerList = ansList.toString();

    var radioList = [];
    $(".radBtn").each(function(){
        radioList.push($(this).val());
    });
    var radioVal = radioList.toString();

    var category = $('#category').val();
    var question = $('#question').val();
    var checkRadio = $('[name=ans]:checked').val();

	$.ajax({
		data: "question_id="+question_id+"&session_user_id="+session_user_id+"&answerList="+answerList+"&radioVal="+radioVal+"&checkRadio="+checkRadio+"&category="+category+"&question="+question,
		url: "components/questions/updateAns.jsp", 
		success: function(result){
			document.getElementById("iread").innerHTML=result;	
		    $("#iread").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}
function genQstn(session_user_id) {

    var ansList = [];
    $(".answ").each(function(){
        ansList.push($(this).val());
    });
    var answerList = ansList.toString();

    var radioList = [];
    $(".radBtn").each(function(){
        radioList.push($(this).val());
    });
    var radioVal = radioList.toString();

    var category = $('#category').val();
    var question = $('#question').val();
    var checkRadio = $('[name=ans]:checked').val();

	$.ajax({
		data: "session_user_id="+session_user_id+"&answerList="+answerList+"&radioVal="+radioVal+"&checkRadio="+checkRadio+"&category="+category+"&question="+question,
		url: "components/questions/saveQuestion.jsp", 
		success: function(result){
			document.getElementById("iread").innerHTML=result;	
		    $("#iread").find("script").each(function(i) {eval($(this).text());});
	  	}
	});
}
function loadquestion(session_user_id) 
{
	$.ajax({
		data: "session_user_id="+session_user_id,
		url: "components/questions/questions.jsp", 
		success: function(result){
			document.getElementById("app").innerHTML=result;
	       	$('#questionTable').load('/TP/components/questions/questionTBL.jsp');
	  	}
	});
}

