<%@include file="../../init/initialize.jsp"%>
<%
  String category_id = "";
  String category_desc = "";
%>
      <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" style="color: #195230;"><b>Add Question</b></h4>
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
                              querySelect = "SELECT `category_id`,`category_desc` FROM `category` WHERE `markasdeleted`='0'";
                              rsSelect = stmt.executeQuery(querySelect);
                              while(rsSelect.next())
                              {
                                  category_id = rsSelect.getString("category_id");
                                  category_desc = rsSelect.getString("category_desc");
                            %>
                              <option value="<%=category_id%>"><%=category_desc%></option>
                            <%
                              }
                            %>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-12" style="padding-top: .3rem;">
                          <label class="label-control"><b>Input Question</b></label>
                          <textarea class="form-control" style="height: 70px;" placeholder="Type Question here . . ." id="question"></textarea>
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>First Option</b></label>
                          <input type="text" class="form-control answ"  >
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <input type="radio" class="form-control radBtn" name="ans" value="1">
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>Second Option</b></label>
                          <input type="text" class="form-control answ"  >
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <input type="radio" class="form-control radBtn" name="ans" value="2">
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>Third Option</b></label>
                          <input type="text" class="form-control answ"  >
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <input type="radio" class="form-control radBtn" name="ans" value="3">
                        </div>
                        <div class="col-md-9" style="padding-top: .3rem;">
                          <label class="label-control"><b>Fourth Option</b></label>
                          <input type="text" class="form-control answ" >
                        </div>
                        <div class="col-md-3" style="padding-top: .3rem;">
                          <label class="label-control" style="padding-left: 1.1rem;"><b>Answer</b></label>
                          <input type="radio" class="form-control radBtn" name="ans" value="4">
                        </div>                                              
                    </div>
                  </div>
        </div>
                 
        <div class="modal-footer" style="padding-left: 2rem;">
          <button type="button" class="btn btn-success btn-fill btn-block" onclick="genQstn()">Generate Question</button>
        </div>
      </div>
    </div>
<div id="readMe"></div>
<div id="iread"></div>
