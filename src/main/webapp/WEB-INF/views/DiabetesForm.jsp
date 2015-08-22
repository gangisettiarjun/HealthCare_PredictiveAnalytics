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
 <form role="form" form" action="/app/analyze/diabetesdata" method="post"> 
 <div class="row">      
            <div class="col-md-6">
                <h3>Capture Patient Diabetes Data</h3>
                </br>
                <div class="form-group col-lg-6">
                    <label for="ex2">Age</label>
                    <input class="form-control" id="age" type="text" placeholder="Enter Age" name="age">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Sex</label>
                    <input class="form-control" id="sex" type="text" placeholder="Enter Sex" name="sex">
                </div>
                                
                <div class="form-group col-lg-6">
                    <label for="ex2">Number of Medications</label>
                    <input class="form-control" id="numberOfMedications" type="text" placeholder="Enter the number of medications" name="numberOfMedications">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Plasma Glucose Concentration</label>
                    <input class="form-control" id="plasmaGlucoseConcentration" type="text" placeholder="Enter Plasma Glucose Concentration" name="plasmaGlucoseConcentration">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Diastolic Blood Pressure</label>
                    <input class="form-control" id="diastolicBloodPressure" type="text" placeholder="Enter Diastolic Blood Pressure" name="diastolicBloodPressure">
                </div>              
                        
                <div class="form-group col-lg-6">
                    <label for="ex2">Triceps Skin Fold Thickness</label>
                    <input class="form-control" id="tricepsSkinFoldThickness" type="text" placeholder="Enter Triceps Skin Fold Thickness" name="tricepsSkinFoldThickness">
                </div>                      
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Serum Insulin</label>
                    <input class="form-control" id="serumInsulin" type="text" placeholder="Enter Serum Insulin" name="serumInsulin">
                </div>  

                <div class="form-group col-lg-6">
                    <label for="ex2">Body Mass Index</label>
                    <input class="form-control" id="bodyMassIndex" type="text" placeholder="Enter the BMI" name="bodyMassIndex">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Diabetes Pedigree Function</label>
                    <input class="form-control" id="diabetesPedigreeFunction" type="text" placeholder="Enter Diabetes Pedigree Function" name="diabetesPedigreeFunction">
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