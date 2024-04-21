<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.UUID"%>  
<%@page import=" Dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ page import="Dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%@page import="java.io.FileInputStream" %>
    <%@page import="java.io.IOException" %>
    <%@page import="java.io.PrintWriter" %>
    <%@page import="javax.swing.JDialog" %>
    <%@page import="javax.swing.JOptionPane" %>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@ page import="Dbcon.dbcon" %>
<%@ page import="java.sql.*"%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
   <%@ page import="java.util.*" %>
    <%@ page import="java.util.Random" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css1/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

<title>QR-Code Generator</title>
<style type="text/css">

/* Credit:
	Design and Develop by Devance
*/

/*  Resources Credit{

    Icons
    
    --credit number -> https://bit.ly/3ojgghi
    --cvv -> https://bit.ly/3yTZ6M2
    --month -> https://bit.ly/3cv1AsH
    --year -> https://bit.ly/3RN6zoC
    --user -> https://bit.ly/3Pq1L72
    --pay -> https://bit.ly/3PlPlgL


    Fonts -> Google Fonts

} */




/* Credit:
	Design and Develop by Devance
*/

/*  Resources Credit{

    Icons
    
    --credit number -> https://bit.ly/3ojgghi
    --cvv -> https://bit.ly/3yTZ6M2
    --month -> https://bit.ly/3cv1AsH
    --year -> https://bit.ly/3RN6zoC
    --user -> https://bit.ly/3Pq1L72
    --pay -> https://bit.ly/3PlPlgL


    Fonts -> Google Fonts

} */




@import url('https://fonts.googleapis.com/css2?family=Oxygen:wght@400;700&display=swap');

@import url('https://fonts.googleapis.com/css2?family=Sen&display=swap');

*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Oxygen', sans-serif;


}


:root{

    /* Font Size */
    
    --heading: 2.5rem;
    --s_head: 2rem;
    --text: 1.5rem;
    --s_text: 1rem;

}


.container{
    min-height: 100vh;
    background-color: #093e5f;
    display: flex;
    justify-content: center;
    align-items: center;
}


.center{
    background: #ffffff;
    border-radius: 3em 0 3em 0;
    margin: 2em;
}

.payment-box{
    max-width: 500px;
    padding: .5em .8em 1em .8em;
    
}

.pay-h{
    font-size: var(--heading);
    text-align: center;
    margin-bottom: .6em;
}



form label{
    display: block;
    font-size: var(--text);
    margin-bottom: .4em;
    
}

form input{
    font-family: 'Sen', sans-serif;
    font-weight: 600;
    font-size: var(--s_text);
    padding: 0.4em .3em;
    margin-left: .6em;
    outline: none;
    letter-spacing: .3em;
    margin-bottom: .7em;
}

input::placeholder{
    font-weight: 100;

    color: rgb(179, 179, 179);
}


.cc-number{
    background: url(https://bit.ly/3QaanyT)  no-repeat;
    width: 90%;
   
}

.expiry-month{
    background: url(https://bit.ly/3zK1dn6) no-repeat;
    width: 20%;
   
}

.expiry-year{
    background: url(https://bit.ly/3oIcwG8) no-repeat;
    width: 30%;
   
}

.cvv{
    background: url(https://bit.ly/3PJ0qse) no-repeat;
    width: 25%;
  
}

.card-holder{
    background: url(https://bit.ly/3oJUPG8) no-repeat;
    width: 90%;
    
}

.icon{
    background-position: .4em .2em;
    background-size: 25px;
    padding-left: 3em;
  
    border: 1px solid black;
    border-radius: 5px;
}

.pay-now{
    display: block;
    margin: .6em auto;
    width: 60%;
    padding: 0.5em;
    border: 1px solid black;
    border-radius: 5px;
    background-color: white;
}

.pay_text{
    font-size: var(--s_text);
    vertical-align: middle;
    
}

.pay_icon{
    width: 20px;
    margin-right: 1em;
    vertical-align: middle;
}

.pay_icon:hover, .pay-icon:focus{
    filter: invert(100%);
}

.pay-now:hover, .pay-now:focus{
    cursor: pointer;
    background-color: #093e5f;
    color: rgb(255, 255, 255);
    
}


/* For  smaller mobile device  */

@media (min-width:100px) and (max-width:250px){
    :root{

        /* Font Size */
        
        --heading: 1.8rem;
        --s_head: 1.5rem;
        --text: 1rem;
        --s_text: 0.7rem;
    
    }

    .center{
        
        margin: 1em;
        
    }

    .payment-box{
        max-width: 230px;
    }

    form input{
        letter-spacing: 0.1em;
    }

    .expiry-month{
        width: 30%;
    }

    .expiry-year{
        width: 40%;
    }
    
    .cvv{
        width: 40%;
    }


    .icon{
        background-position: .4em;
        background-size: 10px;
        padding-left: 2em;
    }

    .pay_icon{
        width: 10px;
    }
    




}


/* For mobile device  */
@media (min-width:251px) and (max-width:450px){
    :root{

        /* Font Size */
        
        --heading: 2.4rem;
        --s_head: 2rem;
        --text: 1.2rem;
        --s_text: 1rem;
    
    }


    .payment-box{
        max-width: 350px;
    }
    

    form input{
        letter-spacing: .3em;
    }

    .icon{
        background-position: .4em;
        background-size: 15px;
        padding-left: 2em;
    }

    .expiry-month{
        width: 28%;
    }

    .expiry-year{
        width: 40%;
    }
    .cvv{
        width: 40%;
    }
}




/* For 4k & Full HD+  */

@media (min-width:1921px){
    :root{

        /* Font Size */
        
        --heading: 6rem;
        --s_head: 3rem;
        --text: 2.5rem;
        --s_text: 2.2rem;
    }

    .payment-box{
        max-width: 1500px;
    }

    .icon{
        
        background-size: 50px;
        
    }

    .pay_icon{
        width: 50px;
    }

}





  




</style>








</head>
<body>
<%

Random r1=new Random(); 

String key2="ABCDEFGH123456789";
char c5=key2.charAt(r1.nextInt(key2.length()));
char c6=key2.charAt(r1.nextInt(key2.length()));
char c7=key2.charAt(r1.nextInt(key2.length()));
char c8=key2.charAt(r1.nextInt(key2.length()));
char c9=key2.charAt(r1.nextInt(key2.length()));
String t6=""+c5+""+c6+""+c7+""+c8+""+c9;



String cartid=session.getAttribute("carttid").toString();










%>







<form onload="">
<input type="hidden" value="<%=t6%>" onload="myFunction(this.value)">
</form>






<%-- <%
System.out.println("download0000000000000000000===="+key1);  

String key2=request.getParameter("headkey");

System.out.println("download0000000000000000000===="+key2);  
JOptionPane joptionpane =new JOptionPane("CLICK OK");


JDialog jdialog= joptionpane.createDialog("Alert");

jdialog.setAlwaysOnTop(true);

jdialog.show();

String newkey =JOptionPane.showInputDialog("Enter Your filekey");

Connection con;
con=dbcon.create();
if(newkey.equals(key1))

{
	
	String orderid=request.getParameter("pid");
	String cname=request.getParameter("amt");
	String ptype=request.getParameter("ptype");
	String Status="Payed";
	try{
		Connection conn=dbcon.create();
		Statement st=con.createStatement();
		st.executeUpdate("UPDATE onpur.cart set ptype='"+ptype+"',status='"+Status+"' where  status='sold'  and orderid='"+orderid+"' ");
		
		response.sendRedirect("receivedorder.jsp?valid");
	}
	catch(Exception e){
		response.sendRedirect("error.jsp?inval id");
	System.out.println(e);
	}
}

else
{
System.out.println("failed");
	
	JOptionPane.showMessageDialog(null, "Sorry Your key is wrong");
	
	response.sendRedirect("Error.jsp");
}		


%> --%>








<%-- <%

String orderid=request.getParameter("pid");
String cname=request.getParameter("amt");
String ptype=request.getParameter("ptype");
String Status="Payed";
try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE onpur.cart set ptype='"+ptype+"',status='"+Status+"' where  status='sold'  and orderid='"+orderid+"' ");
	
	response.sendRedirect("receivedorder.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%> --%>
<div class="container">
	<div class="center">
		<div class="payment-box">
			<h1 class="pay-h">Card Details</h1>

			<form class="form" action="paymentstore.jsp" onload=""method="post">
				<label for="Card Number">Card Number</label>

				<input class="cc-number icon" maxlength="16" name="number" pattern="\d*" required placeholder="XXXX XXXX XXXX" type="tel">

				<label for="Expiry Date">Expiry Date</label>
				<input class="expiry-month icon" type="tel" maxlength="2" name="expirymonth" pattern="\d*" required placeholder="01">
				<input class="expiry-year icon" type="tel" maxlength="4" name="expiryyear" pattern="\d*" required placeholder="0000">

				<label for="CVV">CVV</label>
				<input class="cvv icon" type="tel" maxlength="3" name="cvv" pattern="\d*" required placeholder="XXX">

				<input class="card-holder icon" type="text" placeholder="Cardholder Name">
<input class="card-holder icon" type="hidden" name="cartid" value="<%=cartid%>" placeholder="Cardholder Name">
	<input class="card-holder icon" type="hidden" name="generate" value="<%=t6%>" placeholder="Cardholder Name">
	<input type="text" name="otp" placeholder="Enter your OTP">
	
	
	
	
	<button class="pay-now" type="button" class="generate" value="<%=t6%>" onclick="myFunction(this.value)">
					
					Generate QR
				</button>
				
				
				
				<button class="pay-now" >
					<img src="https://bit.ly/3Q8KZcM" alt="" class="pay_icon">
					<span class="pay_text">Pay Now</span>
				</button>
				
			

			</form>
		</div>
	</div>
</div>
 
  <div style="float:right;">
   <div id="image" style="margin:auto"></div>
   <div id="link" style="margin-top:10px; text-align:center"></div>
  </div>
  
  <div id="code" style="float:left; width:100%; height:20px; text-align:center; margin-top:10px"></div>
<script>

function myFunction(data) {

var size = 248;
if(data == "") {
	console.log("out")
    $("#alert").append("<p style='color:#fff;font-size:20px'>Please Enter A Url Or Text</p>"); // If Input Is Blank
    return false;
} else {
    if( $("#image").is(':empty')) {
		console.log("in")
	  //QR Code Image
      $("#image").append("<img src='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "' alt='qr' />");
	  
	  //This Provide An Image Download Link
      $("#link").append("<a style='color:#fff;' href='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "'>Download QR Code</a>");
	  
	  //This Provide the Image Link Path In Text
     // $("#code").append("<p style='color:#fff;'><strong>Image Link:</strong> http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "</p>");
      return true;
	} else {
		console.log("else out")
      $("#image").html("");
      $("#link").html("");
      $("#code").html("");
	  
      //QR Code Image
      $("#image").append("<img src='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "' alt='qr' />");
	  
	  //This Provide An Image Download Link
      $("#link").append("<a style='color:#fff;' href='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "'>Download QR Code</a>");
	  
	  //This Provide the Image Link Path In Text
      $("#code").append("<p style='color:#fff;'><strong>Image Link:</strong> http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "</p>");
      return false;
    }
  }
}
</script>
</center>  
</body>
</html>