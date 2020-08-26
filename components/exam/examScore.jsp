<%@include file="../../init/initialize.jsp"%>
<%
	String correctAnsList []= request.getParameter("corList").split(",");
	String answerList [] = request.getParameter("answerList").split(",");
	String userList = request.getParameter("answerList");
	String numCount = request.getParameter("numCount");
	String category_code = request.getParameter("category_code");
	int items = Integer.parseInt(numCount);
	int score = 0;
	int passingScore = 0;

			for(int i=0; i<correctAnsList.length; i++)
			{
				if(correctAnsList[i].equals(answerList[i]))
				{
				//out.print(correctAnsList[i]+"&"+answerList[i]+"<br>");
				score++;
				}
			}
			passingScore = items/2;

			queryAction = "UPDATE `user_category` SET `score` = '"+score+"',`userAns` = '"+userList+"', `status` ='1' WHERE `category_code`='"+category_code+"'";
	 		rsAction = stmt.executeUpdate(queryAction);

			if(score>=passingScore)
			{
			%>
				<script type="text/javascript">
					 swal("Your score is <%=score%>!", "Congratulation your Passed!", "success");
					 gotoResult('<%=numCount%>','<%=category_code%>');
				</script>
			<%
			}
			else
			{
			%>
				<script type="text/javascript">
					 swal("Your score is <%=score%> out of <%=numCount%>!", "Sorry your failed!", "warning");
					 gotoResult('<%=numCount%>','<%=category_code%>');
				</script>
			<%
			}
		%>
		
		

		
