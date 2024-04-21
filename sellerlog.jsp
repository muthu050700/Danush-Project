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

#text{

text-allign:left;

}
a{
text-decoration:none;
color:red;
</style>

<body>

    <div class="content">
        <form action="sellerlogservlet" method="post">
            <center>
                <div class="column">
                    <div class="row">
                        <H1>Seller Login</H1>
                        <img id="profile" src="images/7.png">
                
                    </div>
                    <br>
                      <div class="form-group">
     
   


     
        </div>
     <br>
                    <div class="row">
                         <label for=""> </label>
                         <input type="text" required = "true" name="mail" id="" placeholder="Enter Email" style="width:250px;height:30px;"  >    
                        </div>
                        <br>
                    <div class="row">
                        <label for=""></label>
                        <input type="text" required="true" name="password" id="myInput" placeholder="Enter Your Location"  autocomplete="off" style="width:250px;height:30px;" >
                        
                    </div><br>
                   
                    
                    <div class="row">
                        <button type="submit">Login</button><br><br>
                    </div>
                    <a href="sellerreg.jsp">New User SignUp</a>
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
</script>
</html>