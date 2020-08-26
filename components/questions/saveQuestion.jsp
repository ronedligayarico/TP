<%@include file="../../init/initialize.jsp"%>
<%
	String category = request.getParameter("category");
	String question = request.getParameter("question");

	String radioVal [] = request.getParameter("radioVal").split(",");
	String answerList [] = request.getParameter("answerList").split(",");
	String checkRadio = request.getParameter("checkRadio");


	String question_id = request.getParameter("question_id");

	queryAction = "INSERT INTO `questions`(`category_id`,`question_desc`,`correct_ans`,`date_entered`,`entered_by`) VALUES ('"+category+"','"+question+"','"+checkRadio+"',NOW(),'"+session_user_id+"')";
	rsAction = stmt.executeUpdate(queryAction);
    if(rsAction>0) 
    {
    	querySelect = "SELECT `question_id` FROM `questions` WHERE `markasdeleted`='0' ORDER BY `question_id` DESC  LIMIT 1";
    	rsSelect = stmt.executeQuery(querySelect);
    	if(rsSelect.next())
    	{
    		question_id = rsSelect.getString("question_id");

    		for(int i=0; i<answerList.length; i++)
    		{
    			queryAction1 = "INSERT INTO `choices`(`question_id`,`choices_desc`,`choices_val`) VALUES ('"+question_id+"','"+answerList[i]+"','"+radioVal[i]+"')";
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
    }
%>