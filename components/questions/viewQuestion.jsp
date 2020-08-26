<%@include file="../../init/initialize.jsp"%>
<%
  String question_id = request.getParameter("question_id");
  String category_id = "";
  String category_desc = "";
  String question_desc = "";
  String category_old = "";
  String choices_desc = "";
  String correct_ans = "";
%>
      <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" style="color: #195230;"><b>Modify Question</b></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons"><span aria-hidden="true">&times;</span></i>
          </button>
        </div>
        <div class="modal-body">
                  <div class="col-lg-12" >
                    <div class="form-row">


                        <div class="col-md-10" style="padding-top: .3rem;">
                          <div class="form-group">
                            <label class="label-control"><b>Select Category</b></label>
                            <select class="form-control" id="category">
                              <option value="0" selected hidden>Select Subject</option>
                            <%
                            querySelect1 = "SELECT `category_id` FROM `questions` WHERE `markasdeleted`='0' AND `question_id` = '"+question_id+"'";
                            rsSelect1 = stmt1.executeQuery(querySelect1);
                            if(rsSelect1.next())
                            {
                                  category_old = rsSelect1.getString("category_id");


                              querySelect = "SELECT `category_id`,`category_desc` FROM `category` WHERE `markasdeleted`='0'";
                              rsSelect = stmt.executeQuery(querySelect);
                              while(rsSelect.next())
                              {
                                  category_id = rsSelect.getString("category_id");
                                  category_desc = rsSelect.getString("category_desc");
                            %>
                             <option  value="<%=category_id%>" <%=category_id.equals(category_old) ? "selected" : ""%> ><%=category_desc%></option>
                            <%
                              }
                            }
                            %>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-12" style="padding-top: .3rem;">
                          <label class="label-control"><b>Input Question</b></label>
                          <%
                            querySelect = "SELECT `question_desc` FROM `questions` WHERE `markasdeleted`='0' AND `question_id` = '"+question_id+"'";
                            rsSelect = stmt.executeQuery(querySelect);
                            while(rsSelect.next())
                            {
                              question_desc = rsSelect.getString("question_desc");
                          %>
                          <textarea class="form-control" style="height: 70px;" placeholder="Type Question here . . ." id="question" value="<%=question_desc%>"><%=question_desc%></textarea>
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>First Option</b></label>
                          <%
                            querySelect = "SELECT `choices_desc` FROM `choices` WHERE `markasdeleted`= '0' AND `question_id`= '"+question_id+"' AND `choices_val`='1'";
                            rsSelect = stmt.executeQuery(querySelect);
                            if(rsSelect.next())
                            {
                              choices_desc = rsSelect.getString("choices_desc");
                          %>
                          <input type="text" class="form-control answ" value="<%=choices_desc%>">
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <%
                            querySelect = "SELECT `correct_ans` FROM `questions` WHERE `markasdeleted`='0' AND `question_id` ='"+question_id+"'";
                            rsSelect = stmt.executeQuery(querySelect);
                            while(rsSelect.next())
                            {
                              correct_ans = rsSelect.getString("correct_ans");
                          %>
                          <input type="radio" class="form-control radBtn" name="ans" value="1" <%="1".equals(correct_ans) ? "checked" : ""%>>
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>Second Option</b></label>
                          <%
                            querySelect = "SELECT `choices_desc` FROM `choices` WHERE `markasdeleted`= '0' AND `question_id`= '"+question_id+"' AND `choices_val`='2'";
                            rsSelect = stmt.executeQuery(querySelect);
                            if(rsSelect.next())
                            {
                              choices_desc = rsSelect.getString("choices_desc");
                          %>
                          <input type="text" class="form-control answ" value="<%=choices_desc%>">
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <%
                            querySelect = "SELECT `correct_ans` FROM `questions` WHERE `markasdeleted`='0' AND `question_id` ='"+question_id+"'";
                            rsSelect = stmt.executeQuery(querySelect);
                            while(rsSelect.next())
                            {
                              correct_ans = rsSelect.getString("correct_ans");
                          %>
                          <input type="radio" class="form-control radBtn" name="ans" value="2" <%="2".equals(correct_ans) ? "checked" : ""%>>
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>Third Option</b></label>
                          <%
                            querySelect = "SELECT `choices_desc` FROM `choices` WHERE `markasdeleted`= '0' AND `question_id`= '"+question_id+"' AND `choices_val`='3'";
                            rsSelect = stmt.executeQuery(querySelect);
                            if(rsSelect.next())
                            {
                              choices_desc = rsSelect.getString("choices_desc");
                          %>
                          <input type="text" class="form-control answ" value="<%=choices_desc%>">
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <%
                            querySelect = "SELECT `correct_ans` FROM `questions` WHERE `markasdeleted`='0' AND `question_id` ='"+question_id+"'";
                            rsSelect = stmt.executeQuery(querySelect);
                            while(rsSelect.next())
                            {
                              correct_ans = rsSelect.getString("correct_ans");
                          %>
                          <input type="radio" class="form-control radBtn" name="ans" value="3" <%="3".equals(correct_ans) ? "checked" : ""%>>
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>Fourth Option</b></label>
                          <%
                            querySelect = "SELECT `choices_desc` FROM `choices` WHERE `markasdeleted`= '0' AND `question_id`= '"+question_id+"' AND `choices_val`='4'";
                            rsSelect = stmt.executeQuery(querySelect);
                            if(rsSelect.next())
                            {
                              choices_desc = rsSelect.getString("choices_desc");
                          %>
                          <input type="text" class="form-control answ" value="<%=choices_desc%>">
                          <%
                            }
                          %>
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <%
                            querySelect = "SELECT `correct_ans` FROM `questions` WHERE `markasdeleted`='0' AND `question_id` ='"+question_id+"'";
                            rsSelect = stmt.executeQuery(querySelect);
                            while(rsSelect.next())
                            {
                              correct_ans = rsSelect.getString("correct_ans");
                          %>
                          <input type="radio" class="form-control radBtn" name="ans" value="4" <%="4".equals(correct_ans) ? "checked" : ""%>>
                          <%
                            }
                          %>
                        </div>                                              
                    </div>
                  </div>
        </div>
                 
        <div class="modal-footer" style="padding-left: 2rem;">
          <button type="button" class="btn btn-success btn-fill btn-block" onclick="updateAns('<%=question_id%>')">Save Changes</button>
        </div>
      </div>
    </div>
<div id="readMe"></div>
<div id="iread"></div>
