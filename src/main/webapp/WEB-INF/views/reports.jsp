<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

  
          <style>
            body {
            
            background-size: 1440px 800px;
            background-repeat:no-repeat;
            display: compact;
            font: 13px/18px "Helvetica Neue", Helvetica, Arial, sans-serif;
            }
            #index h1 {
            color:white;
            }
            #index h3 {
            color:white;
            }
            
            #index p {
            color:white;
            }
            
            label {
            color: white;
            }
            
            .navbar
            {
            margin-bottom:0px;
            }
        </style>
</head>

<body>

    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">EHR Analytics</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="${pageContext.request.contextPath}/dashboard">Doctor Dashboard</a></li>
	        <li class="active"><a href="${pageContext.request.contextPath}/heartform">Heart Disease Predictor</a></li> 
	        <li class="active"><a href="${pageContext.request.contextPath}/diabetesform">Diabetes Predictor</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
        <li><a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
	
	
	
	
	
	
	<nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath}/diabetesreport">Diabetes</a></li>
      <li>
        <a href="${pageContext.request.contextPath}/dashboard">HeartDisease</a>
        
      </li>
    </ul>
     </div><!-- /.navbar-collapse -->
</nav>






    <div class="container-fluid" >
      <div class="row">
        <!--<div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="index.html">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Analytics</a></li>
           
          </ul>
          
          
        </div>-->
       
          <h2 class="sub-header">Maximum Cholestrol</h2>
          <div class="table-responsive">
		  
		  <div style='width: 1100px; height: 700px'>
		  <!--<script type='text/javascript' src='http://10.0.0.14/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 549px;'><object class='tableauViz' width='1000' height='700' style='display:none;'><param name='host_url' value='http%3A%2F%2F10.0.0.14%2F' /> <param name='site_root' value='' /><param name='name' value='Report1&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /></object></div>-->
    <!--   <script type='text/javascript' src='http://localhost:9876/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 209px;'><object class='tableauViz' width='1000' height='700' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%3A9876%2F' /> <param name='site_root' value='' /><param name='name' value='Report1&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>
	 -->
	 <script type='text/javascript' src='http://localhost:9876/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height:209px;'><object class='tableauViz' width='1000' height='700' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%3A9876%2F' /> <param name='site_root' value='' /><param name='name' value='Report3&#47;Sheet1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>
	 </div>
	  <h2 class="sub-header">Chest Pain, Maximum Heart Rate, Cholestrol, Old Peak</h2>
	    <div style="width:1100px;height:600px">
		<!--<script type='text/javascript' src='http://localhost/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 549px;'><object class='tableauViz' width='1100' height='800' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%2F' /> <param name='site_root' value='' /><param name='name' value='Report2&#47;Sheet2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>
-->
<!--  <script type='text/javascript' src='http://localhost:9876/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 549px;'><object class='tableauViz' width='1100' height='550' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%3A9876%2F' /> <param name='site_root' value='' /><param name='name' value='Report2&#47;Sheet2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>
 --><script type='text/javascript' src='http://localhost:9876/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 549px;'><object class='tableauViz' width='1100' height='550' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%3A9876%2F' /> <param name='site_root' value='' /><param name='name' value='Report3&#47;Sheet2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>   
      </div>
	  <h2 class="sub-header">Electrocardiographic Results</h2>
	  <div style="width:1100px;height:500px">
<!--<script type='text/javascript' src='http://localhost/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 549px;'><object class='tableauViz' width='1100' height='390' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%2F' /> <param name='site_root' value='' /><param name='name' value='Report3&#47;Sheet3' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>      </div>
<script type='text/javascript' src='http://localhost:9876/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 549px;'><object class='tableauViz' width='1100' height='390' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%3A9876%2F' /> <param name='site_root' value='' /><param name='name' value='Report3&#47;Sheet3' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>	     
-->		<script type='text/javascript' src='http://localhost:9876/javascripts/api/viz_v1.js'></script><div class='tableauPlaceholder' style='width: 702px; height: 549px;'><object class='tableauViz' width='1100' height='390' style='display:none;'><param name='host_url' value='http%3A%2F%2Flocalhost%3A9876%2F' /> <param name='site_root' value='' /><param name='name' value='Report3&#47;Sheet3' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='showVizHome' value='n' /></object></div>     
		 </div>
	  
            
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
	<script>
	function initializeViz() {
  var placeholderDiv = document.getElementById("tableau1");
  var url = "http://rnam-tableau-dev.ericsson.se/t/pdu_ipos/views/Weather_geo/weather_geomap#1";
  var options = {
    width: placeholderDiv.offsetWidth,
    height: placeholderDiv.offsetHeight,
    hideTabs: true,
    hideToolbar: true,
    onFirstInteractive: function () {
      workbook = viz.getWorkbook();
      activeSheet = workbook.getActiveSheet();
    }
  };
  viz = new tableauSoftware.Viz(placeholderDiv, url, options);
}      
	
	</script>
	
<script>	$(initializeViz);  </script>
	
	
</body>
</html>