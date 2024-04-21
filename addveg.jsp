<html lang="en">
<%@ page import="java.util.*"%>
<head>
<script type="text/javascript" src="https://github.com/rubyeffect/easy_fill/tree/master/lib/easy_fill-0.0.1.min.js"></script>
  <title>Reach Me</title>
  <link rel="stylesheet" type="text/css" href="appointment.css" />
  <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min1.css">
</head>
<Style>
body{
background-image:url("image/r11.jpg");
background-size:cover;
background-color: #6d6875;



}

</Style>
<%String location=session.getAttribute("slocal").toString(); %>
 <%
Random r=new Random(); 
		 String key2="1234567890";
		 					char c1=key2.charAt(r.nextInt(key2.length()));
		 					char c2=key2.charAt(r.nextInt(key2.length()));
		 					char c3=key2.charAt(r.nextInt(key2.length()));
		 					char c4=key2.charAt(r.nextInt(key2.length()));
		 					char c5=key2.charAt(r.nextInt(key2.length()));
		 					char c6=key2.charAt(r.nextInt(key2.length()));
		 					char c7=key2.charAt(r.nextInt(key2.length()));
		 					char c8=key2.charAt(r.nextInt(key2.length()));
		 					char c9=key2.charAt(r.nextInt(key2.length()));
		 					char c10=key2.charAt(r.nextInt(key2.length()));
		 					String t5=""+c1+""+c2+""+c3+""+c4; 
		 			%>
`
<body>

<% String email=session.getAttribute("semail").toString(); %>
   <div class="container">
  
    <h3 style="font-weight: bold; color:yellow; text-align: center;margin-top: 10px">Add Product Details</h3><br>
  
    <form method="post" action="vegaddsevlet" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-5" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:30%;width: 38em;margin-bottom: 25px">
        <div class="form-group">
         <div class="form-group">
          <label for="address"  style="color:#fff;">Date :</label>
          <input type="date" class="form-control" id="address"  name="date" required>
        </div>
          <label for="full_name" style="color:#fff;"> Owner Name:</label>
          <input type="text" class="form-control" id="full_name" placeholder="Enter Full Name" name="name" required>
        </div>
        <div class="form-group">
          <label for="email"  style="color:#fff;">Email:</label>
          <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" value="<%=email%>" readonly>
                  </div>
 
 <div class="form-group">
          <label for="email"  style="color:#fff;">Location:</label>
          <input type="text" class="form-control" id="email" placeholder="Enter Location" name="location" value="<%=location%>" readonly>
          
        </div>
           <div class="form-group">
          <label for="password1"  style="color:#fff;">Address </label>
          <textarea type="text" class="form-control" id="password1" placeholder="Enter Cuurent Address" name="add" required></textarea>
        </div>
        
       
        <div class="form-group"> 
          <label for="email"  style="color:#fff;">product Type:</label>
          <select class="form-control" name="cid" placeholder="select Product">
                        <option value="veg">VEGITABLE</option>
                        <option value="fruits">FRUITS</option>
                        <option value="grains">GRAINS</option>
                        <option value="rice">RICE</option>
        
              </select>
        <div class="form-group">
          <label for="address"  style="color:#fff;">Product Name</label>
          <input type="text" class="form-control" id="address" placeholder="Enter Name" name="add" required>
        </div>
         <div class="form-group">
          <label for="password1"  style="color:#fff;">Total Quantity </label>
          <input type="text" class="form-control" id="password1" placeholder="Enter quantity" name="city" required>
        </div>
          <div class="form-group">
          <label for="phone_no"  style="color:#fff;"><i class="fa fa-inr"></i>Price Per KiloGram</label>
          <input type="text" class="form-control" id="phone_no" placeholder="Enter price " name="price" required>
        </div>
        <div class="form-group">
          <label for="phone_no"  style="color:#fff;">Payment</label>
        <select class="form-control" name="state" placeholder="select Product">
                        <option value="DELIVERY">DELIVERY</option>
                        <option value="NO-DELIVERY">NO-DELIVERY</option>
                        
        
              </select>
        </div>
       
        
        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Upload your Container photo:</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" accept="image/*" onchange="preview_image(event)" required>
        </div>
        
        <center><button  class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Register</button></center><br>
               
      </div>
    </div>
    <hr>
     
  </form>
</div>
</body>

<script type='text/javascript'>
  function preview_image(event)
  {
    var reader = new FileReader();
    reader.onload = function()
    {
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
  </script>


</html>