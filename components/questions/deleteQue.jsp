<%@include file="../../init/initialize.jsp"%>
 <%
 	String question_id = request.getParameter("question_id");

try {
 		queryAction = "UPDATE `questions` SET `markasdeleted` = '1' WHERE `question_id` = '"+question_id+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "Successfully deleted!", "success");
							      loadquestion(); 
							 	</script>
							<%
						}
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

 %>