<%@include file="../../init/initialize.jsp"%>
<script src="/TP/components/mySubjects/mySubjects.js"></script>
<%
 	String category_code = "";
 	String category_desc = "";
 	String name = "";
 	String status = "";
%>
<style type="text/css">
	.table
	{
		border:1px solid #054a20;
	}
	th
	{
		border:1px solid #054a20;
	}	
	tr
	{
		border:1px solid #054a20;

	}
	td
	{
		border:1px solid #054a20;
	}
</style>
<div class="form-row">
  <div class="col-md-11">
	<table class="table table" id="#">
						<tr>
							<th style="width: 1rem; color:black; text-align: center; background-color: #6c6c6c;">Subject code</th>
							<%
							querySelect = "SELECT CONCAT(`user_fname`,', ',`user_lname`,' ',`user_mname`)as `name` FROM `users` WHERE `markasdeleted` ='0' AND `user_id` ='"+session_user_id+"'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								name = rsSelect.getString("name");
								%>
							<th style="color:white; text-align: center; background-color: #366b4b;"><b><%=name%></b></th>
								<%
							}
							%>
							<th style="width: 1rem; background-color: #d5bf2e;">    </th>
							<th style="color:black; text-align: center; background-color: #92908d;">Status</th>
							<th style="width: 4rem; color:black; text-align: center; background-color: #d5bf2e;">Action</th>
						</tr>

						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;"><u><b>First Year</b></u></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">1st Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '1' AND `category_sem_id` = '1'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>


						</tr>
						<%
							}
						%>
						<tr style="background-color: #92908d;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">2nd Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '1' AND `category_sem_id` = '2'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>


						</tr>
						<%
							}
						%>
						<tr style="background-color: #366b4b;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>


						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;"><u><b>Second Year</b></u></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">1st Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '2' AND `category_sem_id` = '1'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>


						</tr>
						<%
							}
						%>
						<tr style="background-color: #92908d;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">2nd Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '2' AND `category_sem_id` = '2'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>


						</tr>
						<%
							}
						%>
						<tr style="background-color: #366b4b;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;"><u><b>Third Year</b></u></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">1st Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '3' AND `category_sem_id` = '1'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>


						</tr>
						<%
							}
						%>
						<tr style="background-color: #92908d;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">2nd Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '3' AND `category_sem_id` = '2'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>


						</tr>
						<%
							}
						%>
						<tr style="background-color: #366b4b;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;"><u><b>Fourth Year</b></u></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">1st Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '4' AND `category_sem_id` = '1'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>


						</tr>
						<%
							}
						%>

						<tr style="background-color: #92908d;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr style="background-color: #fff">	
							<td></td>
							<td style="text-align: center;">2nd Semester / Subject Description</td>
							<td>Units</td>
							<td></td>
							<td></td>
						</tr>
						<%
							querySelect = "SELECT `category_code`,`category_desc`,`status` FROM `user_category` WHERE `user_id`='"+session_user_id+"' AND `markasdeleted`= '0' AND `year_lvl_id` = '4' AND `category_sem_id` = '2'";
							rsSelect = stmt.executeQuery(querySelect);
							while(rsSelect.next())
							{
								category_code = rsSelect.getString("category_code");
								category_desc = rsSelect.getString("category_desc");
								status = rsSelect.getString("status");

						%>
						<tr style="background-color: #fff">	
							<td><%=category_code%></td>
							<td><%=category_desc%></td>
							<td style="text-align: center;">3</td>
							<%
							if(status.equals("0"))
							{
								%>
								<td style="text-align: center;"><div class="alert alert-info">On Going</div></td>
								<td style="text-align: center;">
		                              <a class="btn-success dropdown-toggle btn-sm" role="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
		                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		                              <a class="dropdown-item text-success linkModal" href="#" id="#" style="color: blue;" onclick="attention('<%=category_code%>')"><b>Take Exam</b></a>
		                              </div>
								</td>
								<%
							}
							else
							{
								%>
								<td style="text-align: center;"><div class="alert alert-warning">Already Taken</div></td>
								<td style="text-align: center;">
		                            ---
								</td>
								<%
							}
							%>
						</tr>
						<%
							}
						%>
						<tr style="background-color: #366b4b;">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						
	</table>
  </div>
</div>
	
<div class="modal fade" id="subjectModal" tabindex="-1" role="dialog">
</div>