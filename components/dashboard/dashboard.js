function loadAverage() 
{
	$.ajax({
		data: null,
		url: "components/dashboard/computeAvg.jsp", 
		success: function(result){
			document.getElementById("app").innerHTML=result;	
		    // $("#subjectModal").find("script").each(function(i) {eval($(this).text());});
      //       $('#subjectModal').modal({
      //       backdrop: 'static',
      //       keyboard: false
      //   });
	  	}
	});
}