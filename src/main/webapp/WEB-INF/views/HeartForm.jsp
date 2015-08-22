<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>EHRApplication</title>
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
            background:url('${pageContext.request.contextPath}/resources/original-ConvertImage.jpg') no-repeat center center fixed;
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
        </style>
</head>

<body id="index">
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

<!-- <div class="container-fluid">
  <h2>Capture Patient Heart Data</h2>
 <form role="form">
    <div class="form-group">
    
    <div class="control-group">
              Button
       <div class="controls">
           <button class="btn btn-success">Run the Decision Tree</button>
       </div>
    </div>           
  </form> 
</div> -->

 <div class="container-fluid">
 <form role="form" action="/app/analyze/heartdata" method="post">	
 <div class="row">		
			<div class="col-md-6">
				<h3>Capture Patient Heart Data</h3>
				                <div class="form-group col-lg-6">
                    <label for="ex2">Age</label>
                    <input class="form-control" id="age" type="text" placeholder="Enter Age" name="age">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Sex</label>
                    <input class="form-control" id="sex" type="text" placeholder="Enter Sex" name="sex">
                </div>
                                
                <div class="form-group col-lg-6">
                    <label for="ex2">Chest Pain Type</label>
                    <input class="form-control" id="chestPainType" type="text" placeholder="Enter Chest Pain Type" name="chestPainType">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Resting Blood Pressure</label>
                    <input class="form-control" id="restingBloodPressure" type="text" placeholder="Enter Blood Pressure" name="restingBloodPressure">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Serum Cholesterol</label>
                    <input class="form-control" id="serumCholestrol" type="text" placeholder="Enter Serum Cholesterol" name="serumCholestrol">
                </div>              
                        
                <div class="form-group col-lg-6">
                    <label for="ex2">Fasting Blood Sugar</label>
                    <input class="form-control" id="fastingBloodSugar" type="text" placeholder="Enter Fasting Blood Sugar" name="fastingBloodSugar">
                </div>                      
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Resting Electro Cardiograph Results</label>
                    <input class="form-control" id="restingECGResult" type="text" placeholder="Enter Electro Cardiograph Results" name="restingECGResult">
                </div>  

                <div class="form-group col-lg-6">
                    <label for="ex2">Maximum Heart Rate</label>
                    <input class="form-control" id="maxHeartRate" type="text" placeholder="Enter Maximum Heart Rate" name="maxHeartRate">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Exercise Induced Angina</label>
                    <input class="form-control" id="eIAngina" type="text" placeholder="Enter Exercise Induced Angina" name="eIAngina">
                </div>
                                        
                <div class="form-group col-lg-6">
                    <label for="ex2">Old Peak</label>
                    <input class="form-control" id="oldPeak" type="text" placeholder="Enter Old Peak" name="oldPeak">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Slope Of Peak</label>
                    <input class="form-control" id="slopePeak" type="text" placeholder="Enter Slope Of Peak" name="slopePeak">
                </div>  
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Major Vessels Colored By Flouroscopy</label>
                    <input class="form-control" id="vsFlouroscopy" type="text" placeholder="Enter Flourosopy Vessels" name="vsFlouroscopy">
                </div>  
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Thal</label>
                    <input class="form-control" id="thal" type="text" placeholder="Enter Thal" name="thal">
                </div>
                
				  <input type="submit" class="btn btn-success" value="Run Decision Tree">
       			
			</div>
				
				       <!--div class="controls">
				           <button class="btn btn-success">Run Decision Tree</button>
				       </div-->  
		</div>
		</form>
</div>

<style type="text/css">
  
  .btn{ 
    margin-top:23px;
	margin-left:12px;
	width:300px;
  }
	
   p{
	   height:12px;
	   font-size:18px;
   		margin-top:-2px;
   }

</style>
</body>
</html>