function Login()
{
	
      return username() && password() &&user();
      
      function username()
      {
    	  
    	  var username=document.getElementById("username").value;
            document.getElementById("error1").innerHTML="";
            if(username==null || username=="")
            {
            	alert("username cannot be blank");
            document.getElementById("error1").innerHTML="username can not be blank";
            document.getElementById("username").focus();
            return false;
            }
            return true;	     
      }      
      function password()
      {
    	  
    	  var password=document.getElementById("password").value;
          document.getElementById("error2").innerHTML="";
          if(password==null || password=="")
          {
        	  alert("password cannot be blank");
          document.getElementById("error2").innerHTML="Password cannot be blank";
          document.getElementById("password").focus();
          return false;
          }     
          return true;
      }
      
            function user() {
            	var username=document.getElementById("username").value;
        	    var password=document.getElementById("password").value;
        	    
        	    
        	    var string={ 
        	    		"username" : username,"password" : password
        	    };
        	    	jQuery.ajax({
        	        type: "POST",
        	        url: "http://localhost:8080/userlogin",
        	        data:JSON.stringify(string),
        	        contentType: "application/json; charset=utf-8",
        	        dataType: "text",
        	        success: function (data, status, jqXHR) {
        	             alert(status);
        	             alert("1111");
        	             var abc=data;
        	        	if(abc=="password failed")
        	        		alert("password is incorrect")
        	        		else
        	        			if(abc=="No User")
        	        				alert("user does not exist. Please Sign up")
        	        				else
        	        					window.location.href="/success"
        	        },
        	    
        	        error: function (jqXHR, status, textStatus) {            
        	             // error handler
        	        	 
        	             alert(textStatus);
        	             window.location.href="/Error"
        	        }

        	    });

        	}
}