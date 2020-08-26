<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Asiatech</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" /> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" /> -->
    <!-- For the icons -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->

    <!--datatables-->
    <link rel="stylesheet" type="text/css" href="assets/datatables/dataTables.bootstrap4.css">
    <link href="assets/css/demo.css" rel="stylesheet" />
    <!-- sweetalert css -->
    <link rel="stylesheet" href="vendor/sweetalert/sweetalert.css">
</head>

<body>
    <div class="wrapper">
     <%@ include file="../inc/sidebar.jsp"%>
        <div class="main-panel">
            <!-- Topbar -->
            <%@ include file="../inc/topbar.jsp"%>
            <!-- End Topbar -->
                <div class="content">
                    <!-- main content -->
                  <div id="app"></div>
                </div>
            <%@ include file="../inc/footer.jsp"%>
        </div>
    </div>
   
</body>
<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/datatables/jquery.dataTables.min.js"></script>
<script src="assets/datatables/dataTables.bootstrap4.min.js"></script>
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
<script src="assets/js/main.js"></script>
<script src="login.js"></script>
<!-- sweetAlert -->
<script src="vendor/sweetalert/sweetalert.min.js"></script>
<script src="assets/Highcharts-7.1.2/code/highcharts.js"></script>
<script src="assets/Highcharts-7.1.2/code/modules/exporting.js"></script>
<script src="assets/Highcharts-7.1.2/code/modules/export-data.js"></script>
</html>
