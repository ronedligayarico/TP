<%@include file="../../init/initialize.jsp"%>
 <%
 	String category_code = request.getParameter("category_code");

try {
 		queryAction = "UPDATE `category` SET `markasdeleted` = '1' WHERE `category_code` = '"+category_code+"'";
   		rsAction = stmt.executeUpdate(queryAction);
			 if(rsAction>0) 
						{
							%>
								<script>
								  swal("Success", "Successfully deleted!", "success");
							      reloadCategory(); 
							 	</script>
							<%
						}
 	}
 	catch(Exception e) {
 		out.print(e);
 	}

 %>