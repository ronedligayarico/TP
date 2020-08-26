<%@include file="../../init/initialize.jsp"%>
<%
  String category_code = request.getParameter("category_code");
%>
      <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header"><h4 style="color: #c1b353;">Must Read Before Taking Examination</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons"><span aria-hidden="true">&times;</span></i>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-row">.
            <p><b>Rules and Condition for Taking Online Examination.</b></p>
            <ul type="bullet">
              <li>Once you start taking exam theres no way of retaking of exam you must submitted it.</li>
              <li>Once the Exam Start theres a designated time given in exam and once the time end your exam will automatically submitted.</li>
              <li>Answer the Exam by Checking the button of your Answer.</li>
            </ul>
              <br>
              <div class="col-md-12" style="padding-left: 1rem;">
                <input type="checkbox" id="acceptthis" name="acceptthis">
               <b style="font-size: 13px;">I accept the Terms and Conditions</b>
              </div>
          </div>

        </div>
                 
        <div class="modal-footer" style="padding-left: 2rem;">
          <button type="button" class="btn btn-success btn-fill btn-block" onclick="takeExam('<%=category_code%>')">Accept</button>
        </div>
      </div>
    </div>
    <div id="modalRead"></div>
