<%@include file= "../../../init/initialize.jsp"%>
<%
	String code = request.getParameter("code");
	String title = request.getParameter("title");
	String yearlvl = request.getParameter("yearlvl");
	String semester = request.getParameter("semester");


		 	queryAction = "INSERT INTO `category`(`category_code`,`category_desc`,`year_lvl_id`,`category_sem_id`,`date_entered`) VALUES ('"+code+"','"+title+"','"+yearlvl+"','"+semester+"',NOW())";
	 		rsAction = stmt.executeUpdate(queryAction);
		    if(rsAction>0) 
			{
				%>
				<script type="text/javascript">
				$('#categoryModal').modal('hide');
					swal("Success", "Successfully Added!", "success");
					reloadCategory();
				</script>
				<%
			}

%>