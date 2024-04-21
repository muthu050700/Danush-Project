<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.UUID"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%String id=request.getParameter("pid");
String userid=request.getParameter("amt");
%>

<style>
body{
background-image:url("images/amt.jpeg");
background-size:cover;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #ffb84d;
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}



.myDiv {
 
  background-imag: lightblue;    
  border-radius: 10px;
  width:300px;
  height:200px;
  margin: auto;
  padding-top:50px;
  box-shadow: 25px 20px 20px #888888;
  
}

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: orange; 
}

table,td,th {
  border: 0px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: red;
}
table{
border-spacing: 0 15px;
}


</style>
<script type="text/javascript">

function required()
{
var empt1 = document.forms["form1"]["cardholdername"].value;
var empt2 = document.forms["form1"]["cadrnumber"].value;
var empt3 = document.forms["form1"]["expirydate"].value;
var empt4 = document.forms["form1"]["cvvnumber"].value;

if (empt1 == "" ||empt2 == ""||empt3 == ""||empt4 == "")
{
alert("Please input a Value");
//return false;
}
else 
{
alert("Amount was paid");
//return true; 
}
}

</script>

</head>
<body>
<ul>


   
</ul>

<br>
<center>
<div class="myDiv2">
Payment Page<br><br>
</div>
<center>




<form action="Npaymentac.jsp"  onsubmit="required()" method="post">
<div class="myDiv">
<table>
<tr>

<td><input type="hidden"  placeholder="cardholdername" name="pid" value="<%=id %>" style="width:180px;height:30px;border-radius: 10px;text-align:center;"  required><br><br></td>
</tr>
<tr>
<lable>AMOUNT</lable><br>
<td><input type="text"  placeholder="cardholdername" name="amt" value="<%=userid %>" style="width:180px;height:30px;border-radius: 10px;text-align:center;"  required><br><br></td>
</tr>

<tr>
<td><label for="cars">Select payment Option</label><br><br>

<select name="ptype" id="cars" style="width:180px;height:30px;border-radius: 10px;text-align:center;"  required>
  <option value="Cash On Delivery">Cash On Delivery</option>
  <option value="Net banking">Net banking</option>
  <option value="UPI Transaction">UPI Transaction</option>
</select><br><br></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Pay Now" style="width:110px;height:40px;border-radius: 10px;text-align:center; background-color: #ffb84d" required></td>
</tr>


</table>

</div>
</form>
</center>
</body>
</html>