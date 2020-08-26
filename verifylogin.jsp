<%@ page  contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*,java.util.*"%>
<%java.sql.Connection conAdminLogin;
java.sql.Connection conCoreLogin;

conAdminLogin = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/newproject?&autoReconnect=true&failOverReadOnly=false&maxReconnects=10","root", "09236373759");

java.sql.Statement stmtAdminLogin = conAdminLogin.createStatement();
java.sql.Statement stmtAdminLogin1 = conAdminLogin.createStatement();

String querySelect = "";
ResultSet rsSelect = null;
ResultSet rsSelect1 = null;

	String studID = request.getParameter("studID");
	String password = request.getParameter("password");

	try
	{
		if(studID.equals(""))
		{
				%>
				<script>
					swal("Warning!", "Please Enter Username!", "warning");
				</script>
				<%
		}
		else if(password.equals(""))
		{
				%>
				<script>
					swal("Warning!", "Please Enter Password!", "warning");
				</script>
				<%
		}
		else
			{
				querySelect = "SELECT * FROM `newproject`.`users` WHERE `user_number` = '"+studID+"' AND `markasdeleted` = 0 AND `user_type`='2'";
				rsSelect = stmtAdminLogin1.executeQuery(querySelect);
				if(rsSelect.next())
				{
						querySelect = "SELECT `user_id` FROM `newproject`.`users` WHERE `user_number` = '"+studID+"' AND `user_pass` = MD5('"+password+"') AND `markasdeleted` = 0 AND `user_type`='2'";
						rsSelect1 = stmtAdminLogin.executeQuery(querySelect);
						if(rsSelect1.next())
						{

							String user_id = rsSelect1.getString("user_id");

							session.setAttribute("session_user_id", user_id);

							//String session_user_id = (String)session.getAttribute("session_user_id");
								%>
								<script>
									$(document).ready(function(){
										window.location.href='index.jsp';
									});
									
								</script>
								<%
						}
						else
						{
							%>
							<script>
								$(document).ready(function(){
										swal("Warning!", "Incorrect password", "error");
								
									});
								
							</script>
							<%
						
						}
				
				}
				else
				{
						%>
						<script>
							swal("Warning!", "Incorrect Username or Password!", "error");
						</script>
						<%
				}
			}

	}
	catch(Exception e)
	{
		%>
		<script>
			swal("Error!", "<%=e%>", "error");
		</script>
		<%
	}
%>