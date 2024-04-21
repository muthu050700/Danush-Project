 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mlogin.css">
</head>
<style>

body {
 margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url('https://images.pexels.com/photos/7130475/pexels-photo-7130475.jpeg');
    background-size: cover;
}
.login-box {
	width: 280px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #222;
	padding: 40px;
	border-radius: 5px;
	box-shadow: 0 0 10px #000;
}

.login-box h1 {
	color: #fff;
	text-align: center;
	font-size: 24px;
	margin-top: 0;
}

.login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}

.login-box input {
	width: 100%;
	margin-bottom: 20px;
}

.login-box input[type="text"],
.login-box input[type="password"] {
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #fb2525;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.login-box input[type="submit"]:hover {
	cursor: pointer;
	background: #ffc107;
	color: #000;
}

.login-box a {
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}

.login-box a:hover {
	text-decoration: underline;
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

.invit-only {
	margin: 0px 0;
	color: #fff;
	font-size: 14px;
}

.invit-only label {
	display: flex;
	align-items: center;
}

.invit-only label input[type="checkbox"] {
	margin-right: 1px;
}
.referral-code {
  color: white;
}

</style>

<body>

<div class="login-box">
		<!-- <img src="https://cdn.pixabay.com/photo/2019/12/25/09/10/girl-mascot-4718135_960_720.png" class="avatar"> -->
		<h1>Login Here</h1>
		<form action="customerlogservlet" method="post">
			
			<input type="text" name="Location" id="" placeholder="Enter Your Location" >
			
			<input type="text" name="mail" id="" placeholder="Enter Email">
    	<input type="password" name="password" id="myInput" placeholder="Enter Password">
      
			<input type="submit" name="submit" value="Login">
   			<div class="invit-only">
				
			</div>
			<a href="customerreg.jsp">New User SignUp</a><br>
		
		</form>
	</div>


















   <!--  <div class="content">
        <form action="customerlogservlet" method="post">
            <center>
                <div class="column">
                    <div class="row">
                        <H1>Customer Login</H1>
                        <img id="profile" src="images/7.png">
                
                    </div>
                    <br>
                      <div class="form-group">
     
   


     
        </div>
     <br>
                    <div class="row">
                    <label for=""> </label>
                         <input type="text" required = "true" name="Location" id="" placeholder="Enter Your Location" style="width:250px;height:30px;"  >    
                        </div>
                        <br>
                         <label for=""> </label>
                         <input type="text" required = "true" name="mail" id="" placeholder="Enter Email" style="width:250px;height:30px;"  >    
                        </div>
                        <br>
                    <div class="row">
                        <label for=""></label>
                        <input type="password" required="true" name="password" id="myInput" placeholder="Enter Password"  autocomplete="off" style="width:250px;height:30px;" >
                        
                    </div><br>
                    <div>
                    <input type="checkbox" onclick="myFunction()">Show Password
                    </div><br>
                    
                    <div class="row">
                        <button type="submit">Login</button><br><br>
                    </div>
                    <a href="customerreg.jsp">New User SignUp</a>
                </div>
                
            </center>
          
        </form>
        
    </div>
</body>

<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script> -->
</html>