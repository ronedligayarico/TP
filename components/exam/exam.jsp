<%@include file="../../init/initialize.jsp"%>
<!-- <script src="/TP/components/exam/exam.js"></script> -->
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
	<div class="col-md-2">
<!-- 		Time remaining :
		<h3 id="time">05:00</h3> -->
	</div>
</div>

		<%
			querySelect = "SELECT COUNT(*)as `countQuestion` FROM `questions` WHERE `markasdeleted` ='0' AND `category_id` ='"+category_id+"'";
			rsSelect = stmt.executeQuery(querySelect);
			if(rsSelect.next())
			{
				countQuestion = rsSelect.getString("countQuestion");
			}
		%>

<div class="col-md-12">

<hr>
	<div class="form-row">
		<div class="col-lg-1">
		</div>

		<div class="col-md-10">
			<p>Instruction : Check the button of the Correct Answer. 		
			<br>
			Items : <%=countQuestion%>
			</p>

			<div class="row">

				<%
					querySelect = "SELECT `question_id`,`question_desc`,`correct_ans` FROM `questions` WHERE `markasdeleted`='0' AND `category_id`='"+category_id+"'";
					rsSelect = stmt.executeQuery(querySelect);
					while(rsSelect.next())
					{
						int letterCount = 0;

						numCount++;
						question_id = rsSelect.getString("question_id");
						question_desc = rsSelect.getString("question_desc");
						correct_ans = rsSelect.getString("correct_ans");

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
							<input type="radio" name="<%=numCount%>" value="<%=choices_val%>" class="radio ansList" id="inputRad"> 
							<%
							if(letterCount == 1)
							{
								%>
								a. <%=choices_desc%>
								<%
							}
							else if(letterCount == 2)
							{
								%>
								c. <%=choices_desc%>
								<%							
							}
							else if(letterCount == 3)
							{
								%>
								b. <%=choices_desc%>
								<%							
							}
							else if(letterCount == 4)
							{
								%>
								d. <%=choices_desc%>
								<%							
							}	
							else{
								out.print("Error!"+letterCount+"");

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
		<div class="col-lg-1">
		</div>
		<div class="col-lg-10">
			<br><br>
			<!-- <button class="btn btn-danger btn-fill" onclick="">Cancel</button>  -->
			<button class="btn btn-info btn-fill" onclick="submitEx('<%=numCount%>','<%=category_code%>')">Submit</button>
		</div>
		<div class="col-lg-1">
		</div>
	</div>


</div>
<div id="ehhRead"></div>
<script type="text/javascript">

	function startTimer(duration, display) {
	    var timer = duration, minutes, seconds;
	    setInterval(function () {
	        minutes = parseInt(timer / 60, 10);
	        seconds = parseInt(timer % 60, 10);

	        minutes = minutes < 10 ? "0" + minutes : minutes;
	        seconds = seconds < 10 ? "0" + seconds : seconds;

	        display.textContent = minutes + ":" + seconds;

	        if (--timer < 0) {
	            timer = duration;
	            // alert(123);
	        }
	    }, 1000);
	}
	window.onload = function () {
	    var fiveMinutes = 60 * 1,
	        display = document.querySelector('#time');
	    startTimer(fiveMinutes, display);
	};

</script>