<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>EHRApplication</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>

          div {
              opacity: 1;
          }

          p.small {
            line-height: 120%;

            font: 17px/20px  Helvetica, Arial, sans-serif;
            color: white;
          }  
          
          p.bottom {
            line-height: 120%;

            font: 14px/20px Helvetica, Arial, sans-serif;
            color: white;
          }  
                  
          .bottom-three {
            margin-bottom: 3cm;
          }

          br{
            content: " " !important;
            display: block !important;
            margin:80px;
          }
            body {
                padding-top: 50px;
                padding-bottom: 20px;
                background:url('${pageContext.request.contextPath}/resources/original-ConvertImage.jpg') no-repeat center center fixed;
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
            
            #index p {
            color:white;
            }
            
            label {
            color: white;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        <script>
        function Login()
        {
        	//alert("Came inside js validation");
         
        	return username() && password();
        	//alert("Came inside js validation last");
              function username()
              {
            	  //alert("Came inside js validation 1");
            	  var username=document.getElementById("username").value;
                    //document.getElementById("error1").innerHTML="";
                    //alert("Came inside js validation 1 USERNAME:" + username);
                    if(username==null || username=="")
                    {
                    	alert("username cannot be blank");
                    //document.getElementById("error1").innerHTML="username can not be blank";
                    document.getElementById("username").focus();
                    return false;
                    }
                   // alert("Came inside js validation 2");
                    return true;	     
              }      
              function password()
              {
            	 // alert("Came inside js validation 3");
            	  var password=document.getElementById("password").value;
                  //document.getElementById("error2").innerHTML="";
                 // alert("Came inside js validation 1 Password:" + password);
                  if(password==null || password=="")
                  {
                	  alert("password cannot be blank");
                  document.getElementById("error2").innerHTML="Password cannot be blank";
                  document.getElementById("password").focus();
                  return false;
                  }     
                 // alert("Came inside js validation 4");
                  return true;
              }
        }
        </script>
        
        
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"> EHR Analytics</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" role="form" action="/app/doctorLogin" onsubmit="return Login()" method="post">
            <div class="form-group">
              <input type="text" placeholder="Username" class="form-control" id="username" name="username">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control" id="password" name="password">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    
      <div class="container">
      <div class="row" style="margin-left:-80px">
      <div class="col-md-6" class="bottom-three">

      <br/>
        <h1><B>EHR Analytics</h1>
        
        <p class="small" style="text-align: justify">Our goal is to take advantage of the massive amounts of data and provide right intervention for diagnosing chronic diseases to the right patient at the right time. Our application is designed to provide personalized care to the patient.</p> 
        <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/registration" role="button">Register &raquo;</a></p>
        </font>
      </div>
    </div>
    </div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
    <div class="container">
      <!-- Example row of columns -->
      <div class="row" style="margin-left:-80px">
        <div class="col-md-3">
          <h3><b>Dashboard</b></h3>

          <p class="bottom" style="text-align: justify"> Provides an easy to read, real-time user interface, showing a graphical presentation of the patient's data and key performance indicators to make instantaneous and informed decisions at a glance. </p>
          
        </div>
        <div class="col-md-3">
          <h3><b>Capturing EHR Data</b></h3>
          <p class="bottom" style="text-align: justify"> Aggregates information from millions of patients to accelerate the process of diagnosing, making new discoveries as well as guide individual treatment decisions.  </p>
       </div>
        <div class="col-md-3">
          <h3><b>Data Analytics</b></h3>
          <p class="bottom" style="text-align: justify">We provide a solution that aggregates data from patient health records with user symptoms and demographics to make informed decision about diagnosis of Heart disease and Diabetes. 
          </p>
        </div>
      </div>

      

      
      </footer>
    </div> <!-- /container -->        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/main.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>
    </body>
</html>
