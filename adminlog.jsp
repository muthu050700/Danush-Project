<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css3/style.css">
	</head>
<style>
body{
background-image: url("images/pngtr.jpg");


}









a{
text-decoration:none;
color:black;
}
button{
background-color:#2ec4b6;
}
</style>
	<body>

		<div class="wrapper" style="background-color:#84a59d;">
			<div class="inner">
				<div class="image-holder">
					<img src="images/deposit.jpg" style= "margin:20px; width:300px; height:300px;" alt="">
				</div>
				<form action="adminlogservlet" method="post">
				
					<h3>LOGIN !!</h3>
									
					<div class="form-wrapper">
						<input type="text" class="form-control"  name="mail" placeholder="Enter Email"  >    
						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
					
					<div class="form-wrapper">
<input type="text" class="form-control" name="password" placeholder="Enter Password" >
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<button style="border-radius:10px;">Login
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
					
					<br>
					
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>