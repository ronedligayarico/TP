
      <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" style="color: #195230;"><b>Add Category</b></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons"><span aria-hidden="true">&times;</span></i>
          </button>
        </div>
        <div class="modal-body">
                  <div class="col-lg-12" >


                    <div class="form-row">


                        <div class="col-md-6" style="padding-top: .3rem;">
                          <div class="form-group">
                            <label class="label-control"><b>Subject Code</b></label>
                            <input type="text" class="form-control" name="code" id="code">
                          </div>
                        </div>
                        <div class="col-md-6" style="padding-top: .3rem;">
                          <div class="form-group">
                            <label class="label-control"><b>Subject Title</b></label>
                            <input type="text" class="form-control" name="title" id="title">
                          </div>
                        </div>
                        <div class="col-md-6" style="padding-top: .3rem;">
                          <div class="form-group">
                            <label class="label-control"><b>Subject Year Level</b></label>
                            <select class="form-control" id="yearlvl">
                              <option value="0" selected hidden>Select Year</option>
                              <option value="1">1st Year</option>
                              <option value="2">2nd Year</option>
                              <option value="3">3rd Year</option>
                              <option value="4">4rth Year</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-6" style="padding-top: .3rem;">
                          <div class="form-group">
                            <label class="label-control"><b>Subject Semester</b></label>
                             <select class="form-control" id="semester">
                              <option value="0" selected hidden>Select Semester</option>
                              <option value="1">1st Semester</option>
                              <option value="2">2ndSemester </option>
                            </select>
                          </div>
                        </div>
   
                    </div>

                  </div>
        </div>
                 
        <div class="modal-footer" style="padding-left: 2rem;">
          <button type="button" class="btn btn-success btn-fill btn-block" onclick="save()">Save Record</button>
        </div>
      </div>
    </div>
<div id="readMe"></div>
