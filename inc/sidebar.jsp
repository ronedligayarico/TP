<%@include file="../init/initialize.jsp"%>                   
<%
    String sidebar_desc = "";
    String sidebar_icon = "";
    String sidebar_path = "";
    String name = "";
%>
        <div class="sidebar" data-color="green" data-image="assets/img/sidebar.jpg">
       <!-- 
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"
        Tip 2: you can also add an image using data-image tag
        -->
            <div class="sidebar-wrapper">
                <div class="logo" style="padding-left: 2.5rem;">
                    <%
                        querySelect5 = "SELECT CONCAT(`user_fname`,' ',`user_lname`)as name FROM `users` WHERE `markasdeleted` ='0' AND `user_id`= '"+session_user_id+"'";
                        rsSelect5 = stmt5.executeQuery(querySelect5);
                        if(rsSelect5.next())
                        {
                            name = rsSelect5.getString("name");
                    %>
                    <p style="padding-top: .4rem;"><%=name%></p>
                    <%
                        }
                    %>
                                <img src="assets/img/faces/face-1.jpg" style="height:50px;width:50px; border-radius: 100%;">
                </div>
                <%
                if(session_user_id.equals("1"))
                {
                    %>
                        <ul class="nav">
                            <%
                            querySelect = "SELECT * FROM `sidebar` WHERE `markasdeleted`='0' AND `sidebar_type`!='2'";
                            rsSelect = stmt.executeQuery(querySelect);
                            while(rsSelect.next())
                            {
                                sidebar_desc = rsSelect.getString("sidebar_desc");
                                sidebar_icon = rsSelect.getString("sidebar_icon");
                                sidebar_path = rsSelect.getString("sidebar_path");
                            %>
                            <li class="nav-item">
                                <a class="nav-link reloadLink" href="#" id="<%=sidebar_path%>">
                                    <i class="<%=sidebar_icon%>"></i>
                                    <p><%=sidebar_desc%></p>
                                </a>
                            </li>
                            <%
                            }
                            %>
                        </ul>
                    <%
                }
                if(session_user_id.equals("2"))
                {
                    %>
                        <ul class="nav">
                            <%
                            querySelect = "SELECT * FROM `sidebar` WHERE `markasdeleted`='0' AND `sidebar_type`!='1'";
                            rsSelect = stmt.executeQuery(querySelect);
                            while(rsSelect.next())
                            {
                                sidebar_desc = rsSelect.getString("sidebar_desc");
                                sidebar_icon = rsSelect.getString("sidebar_icon");
                                sidebar_path = rsSelect.getString("sidebar_path");
                            %>
                            <li class="nav-item">
                                <a class="nav-link reloadLink" href="#" id="<%=sidebar_path%>">
                                    <i class="<%=sidebar_icon%>"></i>
                                    <p><%=sidebar_desc%></p>
                                </a>
                            </li>
                            <%
                            }
                            %>
                        </ul>
                    <%
                }
                %>

            </div>
        </div>