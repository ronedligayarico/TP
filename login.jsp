<html lang="en">
<head>
    <title>Log in</title>

	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


	<style>body{padding-top: 60px;}</style>
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <link href="assetsLogin/css/bootstrap.css" rel="stylesheet" />

	<link href="assetsLogin/css/login-register.css" rel="stylesheet" />
	<!-- <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"> -->
    <link rel="stylesheet" href="vendor/sweetalert/sweetalert.css">


</head>
<body style="background: white; background-image: url(assets/img/coverleft.jpg); height: 100vh; background-position: left; background-size: cover; font-style: color:white;">
    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">   
                <h1 style="color: white; border-color: #d5c02f;"><center><b>Asiatech Student Screening Exam for Employment</b></center></h1>
                <br>
                <hr>
             
            </div>
            <div class="col-sm-1"></div>
        </div>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-6" style="padding-left:4rem;">
                <h4 style="padding-left: 11rem; color: white"><b><u>Log in as</u></b></h4>
                 <button class="btn btn-success btn-lg" style="width: 150px;" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModalStudent();">Student</button>
                 <button class="btn btn-success btn-lg" style="width: 150px;" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModalRegistrar();">Registrar</button>
            </div>

        </div>


		 <div class="modal fade login" id="loginModalStudent">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header"  style="border-top-right-radius: 5px; border-top-left-radius: 5px;">
                        <button type="button" style="color: white;" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="box">
                             <div class="content">
                                <center> 
                                    <img src="assets/img/asiatech.png" alt="Metis Logo" style="width: 100px;">
                                </center>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span style="color:white;">Login</span>
                                    <div class="line r"></div>
                                </div>
                                <br>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <input class="form-control" minlength="6" type="text" placeholder="Student Number" id="studID" onkeyup="numberInputOnly(this);">
                                    <input class="form-control" type="password" minlength="6" placeholder="Password" id="password">
                                    <br>
                                    <br>    
                                    <center>
                                    <button class="btn btn-success btn-lg" style="width: 200px;" onclick="login()">Log in</button>
                                    <!-- <button class="btn btn-success btn-lg" style="width: 200px;" type="submit" name="submit" onclick="loginAjax()">Log in</button> -->
                                    </center>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                <input class="form-control" type="text" placeholder="Student ID" name="stud-id">
                                <input  class="form-control" type="password" placeholder="Password">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation">
                                <input class="btn btn-default btn-register" type="button" value="Create account" name="commit">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer"  style="border-bottom-right-radius: 5px; border-bottom-left-radius: 5px;">
                        <div class="forgot login-footer">
                            <span style="color:white;">Looking to
                                 <a href="javascript: showRegisterForm.();" style="color:#d5c02f;">create an account</a>
                            ?</span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span style="color:white;">Already have an account?</span>
                             <a href="javascript: showLoginForm();">Login</a>
                        </div>
                    </div>
    		      </div>
		      </div>
		  </div>
          <div class="modal fade login" id="loginModalRegistrar">
              <div class="modal-dialog login animated">
                  <div class="modal-content">
                     <div class="modal-header"  style="border-top-right-radius: 5px; border-top-left-radius: 5px;">
                        <button type="button" style="color: white;" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="box">
                             <div class="content">
                                <center> 
                                    <img src="assets/img/asiatech.png" alt="Metis Logo" style="width: 100px;">
                                </center>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span style="color:white;">Login</span>
                                    <div class="line r"></div>
                                </div>
                                <br>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <input class="form-control" minlength="6" type="text" placeholder="Username" id="studID1">
                                    <input class="form-control" type="password" minlength="6" placeholder="Password" id="password1">
                                    <br>
                                    <br>    
                                    <center>
                                    <button class="btn btn-success btn-lg" style="width: 200px;" onclick="login1()">Log in</button>
                                    <!-- <button class="btn btn-success btn-lg" style="width: 200px;" type="submit" name="submit" onclick="loginAjax()">Log in</button> -->
                                    </center>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                <input class="form-control" type="text" placeholder="Student ID" name="stud-id">
                                <input  class="form-control" type="password" placeholder="Password">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation">
                                <input class="btn btn-default btn-register" type="button" value="Create account" name="commit">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer"  style="border-bottom-right-radius: 5px; border-bottom-left-radius: 5px;">
                        <div class="forgot login-footer">
                            <span style="color:white;">Looking to
                                 <a href="javascript: showRegisterForm.();" style="color:#d5c02f;">create an account</a>
                            ?</span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span style="color:white;">Already have an account?</span>
                             <a href="javascript: showLoginForm();">Login</a>
                        </div>
                    </div>
                  </div>
              </div>
          </div>
    </div>


</body>
</html>


    <script src="assetsLogin/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assetsLogin/js/bootstrap.js" type="text/javascript"></script>
    <script src="assetsLogin/js/login-register.js" type="text/javascript"></script>
    <script src="login.js" type="text/javascript"></script>
    <script src="vendor/sweetalert/sweetalert.min.js"></script>
    <script type="text/javascript">
           //NUMBER ONLY
          function numberInputOnly(elem) {
                        var validChars = /[0-9,-]/;
                        var strIn = elem.value;
                        var strOut = '';
                        for(var i=0; i < strIn.length; i++) {
                          strOut += (validChars.test(strIn.charAt(i)))? strIn.charAt(i) : '';
                        }
                        elem.value = strOut;
                    }
          var studID = document.getElementById("studID");
          var password = document.getElementById("password");
          
          studID.addEventListener("keyup", function(event) {
            if (event.keyCode === 13) {
            event.preventDefault();
            login();
            }
          });
          
          password.addEventListener("keyup", function(event) {
            if (event.keyCode === 13) {
            event.preventDefault();
            login();
            }
          });
        
    </script>
    <div id="divLogin"></div>