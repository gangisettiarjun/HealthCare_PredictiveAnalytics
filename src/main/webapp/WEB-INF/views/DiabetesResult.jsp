<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<!-- BootStrap stuff -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  
  <!-- Jquery stuff -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  
<style>
	.ui-progressbar-value.ui-widget-header.ui-corner-left {
	height:27px;
  background: #5cb85c;
}

body {
         padding-top: 50px;
         padding-bottom: 20px;
         background:url('${pageContext.request.contextPath}/resources/original-ConvertImage.jpg') no-repeat center center fixed;
         font-weight: 900;
         background-size: 1440px 800px;
         background-repeat:no-repeat;
         display: compact;
         font: 13px/18px "Helvetica Neue", Helvetica, Arial, sans-serif;
         color: white;
      }
      #index h1 {
         color:white;
      }
      #index h3 {
         color:white;
      }
      #index h2 {
         color:white;
         }
      #index p {
         color:white;
      }
      label {
        color: white;
      }
}
</style>

<script>

window.onload = function() {
	document.getElementById("DecisionText").style.fontSize= "large";
	//alert("${HeartClassLabel}");
	if("${DiabetesClassLabel}" == "1")
		{
		document.getElementById("spanForShowingDecision").style.color = "Red";
		document.getElementById("spanForShowingDecision").innerHTML = "Yes";
		//document.getElementById("lblDecision").visible = true;
		//alert("Value Checking: "+document.getElementById("spanForShowingDecision").value);
		}
	else
		{
		document.getElementById("spanForShowingDecision").style.color = "Green";
		document.getElementById("spanForShowingDecision").innerHTML = "No";
		//alert("Value Checking: "+document.getElementById("spanForShowingDecision").value);
		}
		//document.getElementById("spanForShowingDecision").style.fontWeight="bolder";
		document.getElementById("spanForShowingDecision").style.fontWeight= "900";
		document.getElementById("spanForShowingDecision").style.fontSize= "x-large";
		
		var temp;
		//alert("Sex Start:"+"${HeartData.sex}");
						
//}

//$(function() {
	//alert("HeartData.Age : "+"${HeartData.age}");
    $( "#NoMedicationsValuebar" ).progressbar({
      //value: 37
      value: parseFloat("${DiabetesData.numberOfMedications}"),
      max: 17
      
    });  
    
    //alert("HeartData.restingBloodPressure : "+"${HeartData.restingBloodPressure}");
    $( "#PlasmaGCValuebar" ).progressbar({
        //value: 37        
        value: parseFloat("${DiabetesData.plasmaGlucoseConcentration}"),
        max: 199
      });
 
    //alert("HeartData.maxHeartRate : "+"${HeartData.maxHeartRate}");
    $( "#DiastolicBPValuebar" ).progressbar({
        //value: 37
        value: parseInt("${DiabetesData.diastolicBloodPressure}"),
        max: 122
      });
    //alert("HeartData.oldPeak : "+"${HeartData.oldPeak}");
    $( "#TricepsSFTValuebar" ).progressbar({
        //value: 37
        value: parseInt("${DiabetesData.tricepsSkinFoldThickness}"),
        max: 99
      });
    $( "#SerumIValuebar" ).progressbar({
        //value: 37
        value: parseInt("${DiabetesData.serumInsulin}"),
        max: 846
      });
    $( "#BMIValuebar" ).progressbar({
        //value: 37
        value: parseInt("${DiabetesData.bodyMassIndex}"),
        max: 67.1
      });
    $( "#DiabetesPFValuebar" ).progressbar({
        //value: 37
        value: parseInt("${DiabetesData.diabetesPedigreeFunction}"),
        max: 2.42
      });
    $( "#AgeValuebar" ).progressbar({
        //value: 37
        value: parseInt("${DiabetesData.age}"),
        max: 81
      });
    
  }
  //);
</script>
<body>

<div>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">EHR Analytics</a>
	    </div>
	    <div>
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="#">Doctor Dashboard</a></li>
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
</div>
<div>
<h3>
	Diabetes Decision Viewer
</h3>

<span id="DecisionText">Decision is</span> <label id="spanForShowingDecision"></label>
</div>
</br>
<!-- <label>Patient values comparable to our Dataset</label> -->
<div style="width:60%">
<div float:left style="width:49%; float:left; padding-right:2%">

<label>Number of Medications: 0-17</label>
<div id="NoMedicationsValuebar" style="height:27px"></div>
<br/>
<label>Plasma Glucose Concentration: 0-199</label>
<div id="PlasmaGCValuebar" style="height:27px"></div>
<br/>
<label>Diastolic Blood Pressure: 0-122</label>
<div id="DiastolicBPValuebar" style="height:27px"></div>
<br/>
<label>Triceps Skin Fold Thickness: 0-99</label>
<div id="TricepsSFTValuebar" style="height:27px"></div>
<br/>
<label>Serum Insulin: 0-846</label>
<div id="SerumIValuebar" style="height:27px"></div>
<br/>

<label>Body Mass Index: 0-67.1</label>
<div id="BMIValuebar" style="height:27px"></div>

<br/>
<label>Diabetes Pedigree Function: 0-2.42</label>
<div id="DiabetesPFValuebar" style="height:27px"></div>
<br/>

</div>
<div style="width:49% ;float:left; padding-left:2%">

<label>Age: 21-81</label>
<div id="AgeValuebar" style="height:27px"></div>
<br/>

</div>
</div>


</body>
</html>