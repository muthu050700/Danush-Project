<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import=" database.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/account.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<%

String amount=request.getParameter("amnt");
%>

<%String email=session.getAttribute("cmail").toString();%>

<style>
body{
background-color:#8BA6E9;
}
table{
background-color:#D7B7BC;
}
</style>
	 
<body>
<div class="dashboardContainer">
  <div class="menu">
    <div class="title">
    
  <%	

	 Connection d = dbcon.create();
	 PreparedStatement p = d.prepareStatement("SELECT sum(camount) FROM `herbal`.`orders` where orderof='"+email+"'");
	 System.out.println(p);
	 ResultSet rp = p.executeQuery();
	
		while (rp.next()){
					
			
			
			amount=rp.getString(1);
	
		}							
	%> 
    
      <div class="imgHolder">
       <!--  <img src="https://i.imgrpost.com/imgr/2017/11/17/001-money.png" alt="001-money.png" border="0"> -->
      </div>
      <h3>CharityBank</h3>
    </div>
    <div class="profile">
      
      <div class="details">
        <%=email%> <br> <span>ID: 2014112</span>
      </div>
    </div>
  
  </div>
  <div class="info">
    <div class="header">
      <h4>Personal Account</h4>
     
    </div>
   
    <div class="firstRow">
      <div class="elemfirst" id="first">
        <h5>ACCOUNT DETAILS</h5>
        <p><strong>ACCOUNT HOLDER</strong><br><%=email %></p>
        <p><strong>ACCOUNT NO</strong><br> 211-XXX-3546-XXX</p>
        <!-- <p><strong>ACCOUNT TYPE</strong><br> Savings Account</p> -->
        <p></p>
      </div>
      <div class="elemfirst">
        <h5>BALANCE ( in Indian Rupees  )</h5>
        <div id="balance" ><i class="fa fa-rupee-sign"></i> Rs.<%=amount %></div>

      </div>
    </div>

  </div>
</div>
</body>
</html>