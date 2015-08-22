<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>-->
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
        
        <script>
		function validateForm() {
			var v1 = document.getElementById("fName").value;
		    if (v1 == null || v1 == "") {
		        alert("First name cannot be left blank");
		        return false;
		    }
		    var v2=document.getElementById("lName").value;
		    if (v2 == null || v2 == "") {
		        alert("Last name cannot be left blank");
		        return false;
		    }
		    var v3 = document.getElementById("username").value;
		    if (v3 == null || v3 == "") {
		        alert("Username cannot be left blank");
		        return false;
		    }
		    var v4 = document.getElementById("password").value;
		    if (v4 == null || v4 == "") {
		        alert("Password cannot be left blank");
		        return false;
		    }
		    var v5 = document.getElementById("email").value;
		    if (v5 == null || v6 == "") {
		        alert("Email cannot be left blank");
		        return false;
		    }
		}
	</script>
	
</head>

<body id="index">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">EHR Analytics</a>
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
 <form role="form" action="/app/create/doctor" onsubmit="return validateForm()" method="post"> 
 <div class="row">      
            <div class="col-md-6">
                <h3>Doctor Sign Up</h3>
                </br>
                <div class="form-group col-lg-6">
                    <label for="ex2">First Name</label>
                    <input class="form-control" id="fName" type="text" placeholder="Enter First Name" name="fName">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Last Name</label>
                    <input class="form-control" id="lName" type="text" placeholder="Enter Last Name" name="lName">
                </div>
                                
                <div class="form-group col-lg-6">
                    <label for="ex2">Username</label>
                    <input class="form-control" id="username" type="text" placeholder="Enter Username" name="username">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Password</label>
                    <input class="form-control" id="password" type="password" placeholder="Enter Password" name="password">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Department</label>
                    <input class="form-control" id="department" type="text" placeholder="Enter Department" name="department">
                </div>              
                        
                <div class="form-group col-lg-6">
                    <label for="ex2">Field of Specialization</label>
                    <td><input class="form-control" id="specialization" type="text" placeholder="Enter Specialization" name="specialization"></td>
                </div>                      
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Affiliation</label>
					<input class="form-control" id="affiliation" type="text" placeholder="Enter Affiliation" name="affiliation"></td>                </div>  

                <div class="form-group col-lg-6">
                    <label for="ex2">Board Certification</label>
					<input class="form-control" id="boardCertification" type="text" placeholder="Enter Board Certification" name="boardCertification">                
				</div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Email</label>
                   <input class="form-control" id="email" type="text" placeholder="Enter Email" name="email">
                </div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Phone Number</label>
					<input class="form-control" id="phoneNumber" type="text" placeholder="Enter Phone Number" name="phoneNumber">         
				</div>
                
                <div class="form-group col-lg-6">
                    <label for="ex2">Address</label>
					<input class="form-control" id="address" type="text" placeholder="Enter Address" name="address">         
				</div>
                                
				<input type="submit" class="btn btn-success" value="Create Profile">
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