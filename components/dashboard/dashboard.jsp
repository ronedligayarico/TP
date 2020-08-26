<%@ include file="../../init/initialize.jsp"%>
<%
String name = "";
String score = "";
String category_desc = "";
String user_type = "";
String studuser = "";
String categorycount = "";
String questioncount = "";
String subjStat = "";
String fieldCnt = "";
String scores = "";
int scoreInt = 0;
int subCount = 0;
%>
<style type="text/css">
    .myStyle{
        color: #195230;
        font-size: 21px;
    }
</style>

<%
    querySelect = "SELECT * FROM `users` WHERE `markasdeleted`='0' AND `user_id`='"+session_user_id+"'";
    rsSelect = stmt.executeQuery(querySelect);
    while(rsSelect.next())
    {
        user_type = rsSelect.getString("user_type");
    }

if(user_type.equals("2"))
{


    querySelect = "SELECT COUNT(*)as `subjStat` FROM `user_category` WHERE `markasdeleted`='0' AND `status`='0' AND `user_id`='"+session_user_id+"'";
    rsSelect = stmt.executeQuery(querySelect);
    while(rsSelect.next())
    {
      subjStat = rsSelect.getString("subjStat");
      subCount = Integer.parseInt(subjStat);
        if(subCount==0)
        {

        %>
        <div class="col-md-12">
            <div class="form-row">
                    <div class="col-xl-12 col-md-6 mb-4">
                      <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                          <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                              <div class="myStyle text-xs font-weight-bold  text-uppercase mb-1">Job Recommendation</div><span style="font-size: 14px; color:teal">&nbsp;This is only program reccomendation base on your exam result.</span><br><br>

              <%
                querySelect1 = "SELECT COUNT(*)as `fieldCnt`,`score` FROM `user_category` WHERE `markasdeleted`='0' AND `category_field`='Programmer'";
                rsSelect1 = stmt1.executeQuery(querySelect1);
                while(rsSelect1.next())
                {
                    fieldCnt = rsSelect1.getString("fieldCnt");
                    scores = rsSelect1.getString("score");
                    scoreInt = Integer.parseInt(scores);
                }


              %>

                              &nbsp;1st Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-primary"><b>Web Developer</b> - since you acquire the average needed for this subject,you have a potential to be a Web Developer.</div><br>

                              &nbsp;2nd Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-warning"><b>Network Administrator</b> - you can be a Network Administrator, since you meet the average for this position.</div><br>

                              &nbsp;3rd Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-info"><b>Graphic Designer</b> - your passion makes you success ,be Graphic Designer.</div><br>

          <!--                     &nbsp;3rd Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-info"><b>Database Administrator</b> - your passion makes you success ,be Graphic Designer.</div><br>

                              &nbsp;3rd Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-info"><b>Graphic Designer</b> - your passion makes you success ,be Graphic Designer.</div><br>

 -->

                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
            </div>
        </div>
        <%
        }else
        {
          %>
          <div class="col-md-12">
              <div class="form-row">
                      <div class="col-xl-12 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                          <div class="card-body">
                            <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                <div class="myStyle text-xs font-weight-bold  text-uppercase mb-1">Job Recommendation</div><span style="font-size: 14px; color:teal">&nbsp;This is only program reccomendation base on your exam result.</span><br><br>
                                    <div class="alert alert-warning">
                                        <span>
                                           <center><b class="text-xs font-weight-bold  text-uppercase mb-1" style="font-size: 40px;color:#7b2e2e;"> Attention ! </b> </center>
                                           <center> <h3 style="color:#7b2e2e ">Job Recommendation is not available until you completed the exams.</h3></center>
                                        </span>
                                    </div>
<!--                                 &nbsp;1st Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-primary"><b>N/A</b></div><br>
                                &nbsp;2nd Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-warning"><b>N/A</b></div><br>
                                &nbsp;3rd Job Recommended<div class="h5 mb-0 font-weight-bold alert alert-info"><b>N/A</b></div><br> -->
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
              </div>
          </div>
          <%
        }

    }
}
%>







<%
    querySelect = "SELECT * FROM `users` WHERE `markasdeleted`='0' AND `user_id`='"+session_user_id+"'";
    rsSelect = stmt.executeQuery(querySelect);
    while(rsSelect.next())
    {
        user_type = rsSelect.getString("user_type");
    }

if(user_type.equals("1"))
{
%>
<div class="col-md-12">
    <div class="form-row">
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="myStyle text-xs font-weight-bold  text-uppercase mb-1">Total of Student Users</div>
                      <%
                        querySelect = "SELECT COUNT(*)as `studuser` FROM `users` WHERE `markasdeleted`='0' AND `user_type`='2'";
                        rsSelect = stmt.executeQuery(querySelect);
                        while(rsSelect.next())
                        {
                            studuser = rsSelect.getString("studuser");
                      %>
                      <div class="h3 mb-0 font-weight-bold text-gray-800" style="font-family: Calibri; font-weight: bold; color:teal;"><%=studuser%></div>
                      <%
                        }
                      %>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="myStyle text-xs font-weight-bold text-uppercase mb-1">Total Category</div>
                      <%
                        querySelect = "SELECT COUNT(*)as `categorycount` FROM `category` WHERE `markasdeleted`='0'";
                        rsSelect = stmt.executeQuery(querySelect);
                        while(rsSelect.next())
                        {
                            categorycount = rsSelect.getString("categorycount");
                      %>
                      <div class="h3 mb-0 font-weight-bold text-gray-800" style="font-family: Calibri; font-weight: bold; color:teal;"><%=categorycount%></div>
                      <%
                        }
                      %>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="myStyle text-xs font-weight-bold text-uppercase mb-1">Total Question</div>
                      <%
                        querySelect = "SELECT COUNT(*)as `questioncount` FROM `questions` WHERE `markasdeleted`='0'";
                        rsSelect = stmt.executeQuery(querySelect);
                        while(rsSelect.next())
                        {
                            questioncount = rsSelect.getString("questioncount");
                      %>
                      <div class="h3 mb-0 font-weight-bold text-gray-800" style="font-family: Calibri; font-weight: bold; color:teal;"><%=questioncount%></div>
                      <%
                        }
                      %>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="myStyle text-xs font-weight-bold text-uppercase">Student Finished Examination</div>
                      <div class="h3 mb-0 font-weight-bold text-gray-800" style="font-family: Calibri; font-weight: bold; color:teal;">0</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    </div>
</div>
<%
}
%>

<%
    querySelect = "SELECT * FROM `users` WHERE `markasdeleted`='0' AND `user_id`='"+session_user_id+"'";
    rsSelect = stmt.executeQuery(querySelect);
    while(rsSelect.next())
    {
        user_type = rsSelect.getString("user_type");
    }

if(user_type.equals("2"))
{
%>
<div id="container" style="min-width: 300px; height: 400px; margin: 0 auto"></div>
<%
}
%>


<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Examination Score Result'
    },
    subtitle: {
        text: 'Major Subjects of BSIT'
    },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Score of Exam'
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Total score is {point.y:.0f}'
    },
    series: [{
        name: 'Subjects',
        data: [
        <%
            querySelect = "SELECT `category_desc`,`score` FROM `user_category` WHERE `markasdeleted`= '0' AND `user_id`= '"+session_user_id+"'";
            rsSelect = stmt.executeQuery(querySelect);
            while(rsSelect.next())
            {
                    category_desc = rsSelect.getString("category_desc");
                    score = rsSelect.getString("score");
        %>

            ['<%=category_desc%>', <%=score%>],
        <%
            }
        %>

        ],
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#054c23',
            align: 'right',
            format: '{point.y:.0f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '19px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }]
});
</script>

<script type="text/javascript">
    $(document).ready(function() {
        demo.initDashboardPageCharts();
        // demo.showNotification();
        notif =
         {
            welcomeNotif: function(from, align)
             {
                color = Math.floor((Math.random() * 4) + 1);

                $.notify({
                    icon: "nc-icon nc-circle-09",
                    <% 
                    querySelect = "SELECT CONCAT(`user_fname`,' ',`user_lname`)as name FROM `users` WHERE `markasdeleted` ='0' AND `user_id` = '"+session_user_id+"'";
                    rsSelect = stmt.executeQuery(querySelect);
                    if(rsSelect.next())
                        name = rsSelect.getString("name");
                    {
                    %>
                    message: "Welcome <%=name%> ."
                    <%
                    }
                    %>
                }, {
                    type: type[color],
                    timer: 8000,
                    placement: {
                        from: from,
                        align: align
                    }
                });
            }
        }
        notif.welcomeNotif();

    });
</script>