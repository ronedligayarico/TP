<%@include file="../../init/initialize.jsp"%>
<%
	String category = request.getParameter("category");
	String question = request.getParameter("question");

	String radioVal [] = request.getParameter("radioVal").split(",");
	String answerList [] = request.getParameter("answerList").split(",");
	String checkRadio = request.getParameter("checkRadio");

	String question_id = request.getParameter("question_id");

		queryAction = "UPDATE `questions` SET `category_id`='"+category+"',`question_desc`='"+question+"',`correct_ans`='"+checkRadio+"',`entered_by`='"+session_user_id+"' WHERE `question_id`= '"+question_id+"'";
		rsAction = stmt.executeUpdate(queryAction);
	    if(rsAction>0) 
	    {

	    		for(int i=0; i<answerList.length; i++)
	    		{
	    			queryAction1 = "UPDATE `choices` SET `choices_desc`='"+answerList[i]+"' WHERE `question_id`= '"+question_id+"' AND `choices_val`='"+radioVal[i]+"'";
					rsAction1 = stmt1.executeUpdate(queryAction1);
					if(rsAction1>0)
					{
						%>
							<script type="text/javascript">
								swal("Success", "Question Successfully added!", "success");
		     				  	$('#addQstnModal').modal('hide');
								loadquestion(session_user_id);
							</script>
						<%
					}
				}
	    }

%>