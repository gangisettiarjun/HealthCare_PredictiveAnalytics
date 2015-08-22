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
	if("${HeartClassLabel}" == "2")
		{
		document.getElementById("spanForShowingDecision").style.color = "Red";
		document.getElementById("spanForShowingDecision").innerHTML = "Yes";
		//document.getElementById("lblDecision").visible = true;
		//alert("Value Checking: "+document.getElementById("spanForShowingDecision").value);
		}
	else
		{
		document.getElementById("spanForShowingDecision").style.color = "#5cb85c";
		document.getElementById("spanForShowingDecision").innerHTML = "No";
		//alert("Value Checking: "+document.getElementById("spanForShowingDecision").value);
		}
		//document.getElementById("spanForShowingDecision").style.fontWeight="bolder";
		document.getElementById("spanForShowingDecision").style.fontWeight= "900";
		document.getElementById("spanForShowingDecision").style.fontSize= "x-large";
		
		var temp;
		//alert("Sex Start:"+"${HeartData.sex}");
		if(parseInt("${HeartData.sex}") == 0)
		{
			//male
			temp = document.getElementById("btnMale");
		}
		else
		{
			//female
			temp = document.getElementById("btnFemale");
			
		}
		temp.className = temp.className + " btn-success";		
		temp = null;
		//alert("Sex End:"+"${HeartData.sex}");
		
		
		//alert("Start chestPainType:"+"${HeartData.chestPainType}");
		if(parseInt("${HeartData.chestPainType}") == 1.0)
			{
			temp =document.getElementById("btnChestOne"); 
			}
		else if(parseInt("${HeartData.chestPainType}") == 2.0)
			{
			temp =document.getElementById("btnChestTwo"); 
			}
		else if(parseInt("${HeartData.chestPainType}") == 3.0)
			{
			temp =document.getElementById("btnChestThree"); 
			}
		else if(parseInt("${HeartData.chestPainType}") == 4.0)
			{
			temp =document.getElementById("btnChestFour"); 
			}
		temp.className = temp.className + " btn-success";
		//alert("End chestPainType:"+"${HeartData.chestPainType}");
		temp = null;
		
		
		//alert("Start fastingBloodSugar:"+"${HeartData.fastingBloodSugar}");
		if(parseInt("${HeartData.fastingBloodSugar}") == 0.0)
		{
			temp =document.getElementById("btnBloodSugarOne"); 
		}
		else if(parseInt("${HeartData.fastingBloodSugar}") == 1.0)
		{
			temp =document.getElementById("btnBloodSugarTwo"); 
		}
		temp.className = temp.className + " btn-success";
		//alert("End fastingBloodSugar:"+"${HeartData.fastingBloodSugar}");
		temp = null;
		
		
		//alert("Start restingECGResult:"+"${HeartData.restingECGResult}");
		if(parseInt("${HeartData.restingECGResult}") == 0.0)
		{
			temp =document.getElementById("btnRestingEOne"); 
		}
		else if(parseInt("${HeartData.restingECGResult}") == 1.0)
		{
			temp =document.getElementById("btnRestingETwo"); 
		}
		else if(parseInt("${HeartData.restingECGResult}") == 2.0)
		{
			temp =document.getElementById("btnRestingEThree"); 
		}
		temp.className = temp.className + " btn-success";
		//alert("End restingECGResult:"+"${HeartData.restingECGResult}");
		temp = null;
				
		
		//alert("Start eIAngina:"+"${HeartData.eIAngina}");
		if(parseInt("${HeartData.eIAngina}") == 0.0)
		{
			temp =document.getElementById("btnAnginaOne"); 
		}
		else if(parseInt("${HeartData.eIAngina}") == 1.0)
		{
			temp =document.getElementById("btnAnginaTwo"); 
		}
		temp.className = temp.className + " btn-success";
		//alert("Start eIAngina:"+"${HeartData.eIAngina}");
		temp = null;
		
		
		//alert("Start slopePeak:"+"${HeartData.slopePeak}");
		//if(parseInt("${HeartData.slopePeak}") == 0.0)
		//{
		//	temp =document.getElementById("btnSlopePeakOne"); 
		//}
		if(parseInt("${HeartData.slopePeak}") == 1.0)
		{
			temp =document.getElementById("btnSlopePeakTwo"); 
		}
		else if(parseInt("${HeartData.slopePeak}") == 2.0)
		{
			temp =document.getElementById("btnSlopePeakThree"); 
		}
		else if(parseInt("${HeartData.slopePeak}") == 3.0)
		{
			temp =document.getElementById("btnSlopePeakFour"); 
		}
		temp.className = temp.className + " btn-success";
		//alert("End slopePeak:"+"${HeartData.slopePeak}");
		temp = null;
		
		
		
		//alert("Start vsFlouroscopy:"+"${HeartData.vsFlouroscopy}");
		if(parseInt("${HeartData.vsFlouroscopy}") == 0.0)
		{
			temp =document.getElementById("btnMajorVesselOne"); 
		}
		else if(parseInt("${HeartData.vsFlouroscopy}") == 1.0)
		{
			temp =document.getElementById("btnMajorVesselTwo"); 
		}
		else if(parseInt("${HeartData.vsFlouroscopy}") == 2.0)
		{
			temp =document.getElementById("btnMajorVesselThree"); 
		}
		else if(parseInt("${HeartData.vsFlouroscopy}") == 3.0)
		{
			temp =document.getElementById("btnMajorVesselFour"); 
		}
		temp.className = temp.className + " btn-success";
		//alert("End vsFlouroscopy:"+"${HeartData.vsFlouroscopy}");
		temp = null;

		
		//alert("Start Thal:"+"${HeartData.thal}");
		if(parseInt("${HeartData.thal}") == 3)
		{
			temp =document.getElementById("btnThalOne"); 
		}
		else if(parseInt("${HeartData.thal}") == 6)
		{
			temp =document.getElementById("btnThalTwo"); 
		}
		else if(parseInt("${HeartData.thal}") == 7)
		{
			temp =document.getElementById("btnThalThree"); 
		}
		temp.className = temp.className + " btn-success";
		//alert("End Thal:"+"${HeartData.thal}");
		temp = null;
		
				
//}

//$(function() {
	//alert("HeartData.Age : "+"${HeartData.age}");
    $( "#AgeValuebar" ).progressbar({
      //value: 37
      value: parseInt("${HeartData.age}"),
      max: 70
      
    });  
    
    //alert("HeartData.restingBloodPressure : "+"${HeartData.restingBloodPressure}");
    $( "#RestingBPValuebar" ).progressbar({
        //value: 37
        
        value: parseInt("${HeartData.restingBloodPressure}"),
        max: 170
      });
    //alert("HeartData.serumCholestrol : "+"${HeartData.serumCholestrol}");
    $( "#SerumValuebar" ).progressbar({
        //value: 37
        value: parseInt("${HeartData.serumCholestrol}"),
        max: 570
      }); 
    //alert("HeartData.maxHeartRate : "+"${HeartData.maxHeartRate}");
    $( "#MaxHeartRateValuebar" ).progressbar({
        //value: 37
        value: parseInt("${HeartData.maxHeartRate}"),
        max: 220
      });
    //alert("HeartData.oldPeak : "+"${HeartData.oldPeak}");
    $( "#OldpeakValuebar" ).progressbar({
        //value: 37
        value: parseFloat("${HeartData.oldPeak}"),
        max: 7.0
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
	        <li><a href="#">Doctor Dashboard</a></li>
	        <li><a href="${pageContext.request.contextPath}/heartform">Heart Disease Predictor</a></li> 
	        <li><a href="${pageContext.request.contextPath}/diabetesform">Diabetes Predictor</a></li> 
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
	Heart Disease Decision Viewer
</h3>

<span id="DecisionText">Decision is</span> <label id="spanForShowingDecision"></label>
</div>
</br>
<!-- <label>Patient values comparable to our Dataset</label> -->
<div style="width:60%">
<div float:left style="width:49%; float:left; padding-right:2%">

<label>Age: 0-70</label>
<div id="AgeValuebar" style="height:27px"></div>
<br/>
<label>Resting blood pressure: 90-170</label>
<div id="RestingBPValuebar" style="height:27px"></div>
<br/>
<label>Serum Cholestoral: 120-570</label>
<div id="SerumValuebar" style="height:27px"></div>
<br/>
<label>Maximum heart rate achieved: 70-220</label>
<div id="MaxHeartRateValuebar" style="height:27px"></div>
<br/>
<label>Oldpeak: 0.0-7.0</label>
<div id="OldpeakValuebar" style="height:27px"></div>
<br/>



<!-- Testing -->

<label>Sex: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnMale" type="button" style="height:27px" class="btn">Male</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnFemale" type="button" style="height:27px" class="btn">Female</button>
  </div>
</div>

<br/>


<label>ChestPain: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnChestOne" type="button" style="height:27px" class="btn">1</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnChestTwo" type="button" style="height:27px" class="btn">2</button>
  </div>
    <div class="btn-group" role="group">
    <button id="btnChestThree" type="button" style="height:27px" class="btn">3</button>
  </div>
    <div class="btn-group" role="group">
    <button id="btnChestFour" type="button" style="height:27px" class="btn">4</button>
  </div>
</div>

<br/>

</div>
<div style="width:49% ;float:left; padding-left:2%">
<label>Fasting Blood Sugar: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnBloodSugarOne" type="button" style="height:27px" class="btn">1</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnBloodSugarTwo" type="button" style="height:27px" class="btn">2</button>
  </div>
</div>


<br/>
<label>Resting Electrocardiographic: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnRestingEOne" type="button" style="height:27px" class="btn">1</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnRestingETwo" type="button" style="height:27px" class="btn">2</button>
  </div>
   <div class="btn-group" role="group">
    <button id="btnRestingEThree" type="button" style="height:27px" class="btn">3</button>
  </div>
</div>


<br/>
<label>Exercise Induced Angina: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnAnginaOne" type="button" style="height:27px" class="btn">1</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnAnginaTwo" type="button" style="height:27px" class="btn">2</button>
  </div>
</div>


<br/>
<label>The Slope of the Peak Exercise: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnSlopePeakOne" type="button" style="height:27px" class="btn">1</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnSlopePeakTwo" type="button" style="height:27px" class="btn">2</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnSlopePeakThree" type="button" style="height:27px" class="btn">3</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnSlopePeakFour" type="button" style="height:27px" class="btn">4</button>
  </div>
</div>



<br/>
<label>Number of Major Vessels: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnMajorVesselOne" type="button" style="height:27px" class="btn">1</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnMajorVesselTwo" type="button" style="height:27px" class="btn">2</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnMajorVesselThree" type="button" style="height:27px" class="btn">3</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnMajorVesselFour" type="button" style="height:27px" class="btn">4</button>
  </div>
</div>



<br/>
<label>Thal: </label>
<div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
    <button id="btnThalOne" type="button" style="height:27px" class="btn">3</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnThalTwo" type="button" style="height:27px" class="btn">6</button>
  </div>
  <div class="btn-group" role="group">
    <button id="btnThalThree" type="button" style="height:27px" class="btn">7</button>
  </div>
</div>
<!-- End Testing -->
</div>
</div>


</body>
</html>
