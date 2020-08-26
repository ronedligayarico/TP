<%@include file="../../init/initialize.jsp"%>
<style type="text/css">
	.radio
	{
		width: 30px;
	}
	.left
	{
		padding-left: 3rem;
	}
</style>
<%
	String correctAnsList []= request.getParameter("corList").split(",");
	String answerList [] = request.getParameter("answerList").split(",");
	String category_code = request.getParameter("category_code");
	String category_desc = "";
	String category_id = "";
	String question_desc = "";
	String correct_ans = "";
	String question_id = "";
	String choices_desc = "";
	String choices_val = "";
	String countQuestion = "";
	int numCount = 0;
	int score = 0;

		for(int i=0; i<correctAnsList.length; i++)
		{
			if(correctAnsList[i].equals(answerList[i]))
			{
			//out.print(correctAnsList[i]+"&"+answerList[i]+"<br>");
			score++;
			}
		}
%>
<div class="form-row">
	<div class="col-md-10">
		<%
			querySelect = "SELECT `category_id`,`category_desc` FROM `category` WHERE `markasdeleted` ='0' AND `category_code`='"+category_code+"'";
			rsSelect = stmt.executeQuery(querySelect);
			while(rsSelect.next())
			{
				category_desc = rsSelect.getString("category_desc");
				category_id = rsSelect.getString("category_id");
		%>
			<h1><%=category_desc%></h1>
		<%
			}
		%>
	</div>
</div>
		<hr>
		<center>
			<h3 class="text-warning">Your Score is <i><b>'<%=score%>'</b></i></h3>
		</center>
		<div class="col-lg-1"></div>
		<div class="col-lg-10">
			<h5>Review the Correct Answer.</h5>
		</div>
		<div class="col-lg-1"></div>
		<%
			querySelect = "SELECT COUNT(*)as `countQuestion` FROM `questions` WHERE `markasdeleted` ='0' AND `category_id` ='"+category_id+"'";
			rsSelect = stmt.executeQuery(querySelect);
			if(rsSelect.next())
			{
				countQuestion = rsSelect.getString("countQuestion");
			}
		%>
<div class="col-md-12">
	<div class="form-row">
		<div class="col-lg-1" style="padding-left: 6rem;">
			<%
			for(int i=0; i<answerList.length; i++)
			{
				if(answerList[i].equals("1"))
				{
					%>
					<br><u><b style="color: #115f2c;">&nbsp;&nbsp;A.&nbsp;</b></u><br><br><br>
					<%
				}
				else if(answerList[i].equals("2"))
				{
					%>
					<br><u><b style="color: #115f2c;">&nbsp;&nbsp;C.&nbsp;</b></u><br><br><br>
					<%							
				}
				else if(answerList[i].equals("3"))
				{
					%>
					<br><u><b style="color: #115f2c;">&nbsp;&nbsp;B.&nbsp;</b></u><br><br><br>
					<%							
				}
				else if(answerList[i].equals("4"))
				{
					%>
					<br><u><b style="color: #115f2c;">&nbsp;&nbsp;D.&nbsp;</b></u><br><br><br>
					<%							
				}	
				else{
					out.print("Error!");
				}
			}
			%>
		</div>
		<div class="col-md-10">
			<div class="row">
				<%
					querySelect = "SELECT `question_id`,`question_desc`,`correct_ans` FROM `questions` WHERE `markasdeleted`='0' AND `category_id`='"+category_id+"'";
					rsSelect = stmt.executeQuery(querySelect);
					while(rsSelect.next())
					{
						int letterCount = 0;
						question_id = rsSelect.getString("question_id");
						question_desc = rsSelect.getString("question_desc");
						correct_ans = rsSelect.getString("correct_ans");
						numCount++;
				%>
				<div class="col-lg-12">
				<br>
				 <%=numCount%>. <%=question_desc%>
				<input class="corAns" value="<%=correct_ans%>" hidden>
				</div>
					<%

						querySelect1 = "SELECT `choices_desc`,`choices_val`,`question_id` FROM `choices` WHERE `markasdeleted`='0' AND `question_id`='"+question_id+"'";
						rsSelect1 = stmt1.executeQuery(querySelect1);
						while(rsSelect1.next())
						{
							question_id = rsSelect1.getString("question_id");
							choices_val = rsSelect1.getString("choices_val");
							choices_desc = rsSelect1.getString("choices_desc");
							letterCount++;


					%>
						<div class="col-md-5 left">
							<%
								if(correct_ans.equals(choices_val))
								{
									%>
									<input type="radio" value="<%=choices_val%>" class="radio ansList" id="inputRad" checked disabled> 
									<%
									if(letterCount == 1)
									{
										%>
										<b style="color: #2ce075;">A. <%=choices_desc%></b>
										<%
									}
									else if(letterCount == 2)
									{
										%>
										<b style="color: #2ce075;">C. <%=choices_desc%></b>
										<%							
									}
									else if(letterCount == 3)
									{
										%>
										<b style="color: #2ce075;">B. <%=choices_desc%></b>
										<%							
									}
									else if(letterCount == 4)
									{
										%>
										<b style="color: #2ce075;">D. <%=choices_desc%></b>
										<%							
									}	
									else{
										out.print("Error!"+letterCount+"");
									}										
								}
								else if(!correct_ans.equals(choices_val))
								{
									%>
									<input type="radio" value="<%=choices_val%>" class="radio ansList" id="inputRad" disabled> 
									<%
									if(letterCount == 1)
									{
										%>
										A. <%=choices_desc%>
										<%
									}
									else if(letterCount == 2)
									{
										%>
										C. <%=choices_desc%>
										<%							
									}
									else if(letterCount == 3)
									{
										%>
										B. <%=choices_desc%>
										<%							
									}
									else if(letterCount == 4)
									{
										%>
										D. <%=choices_desc%>
										<%							
									}	
									else{
										out.print("Error!"+letterCount+"");
									}									
								}
								else
								{
									out.print("ERROR!");
								}
							%>
						</div>

					<%
						}
					}
					%>
			</div>
		</div>
		<div class="col-lg-1">
		</div>
	</div>
</div>