<%@ page import="Dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("name");
System.out.println(id);
try{
if(id.equals("veg")){
	response.sendRedirect("vegview.jsp");
}
else if(id.equals("fruits")){
	response.sendRedirect("fruitsview.jsp");
}
else if(id.equals("grains")){
	response.sendRedirect("grainsview.jsp");
}
else if(id.equals("pulses")){
	response.sendRedirect("pulsesview.jsp");
}
else if(id.equals("rice")){
	response.sendRedirect("riceview.jsp");
}
}
/* String status="Activate";
try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE hos.doctorreg set status='"+status+"' where id='"+id+"' ");
	response.sendRedirect("approve.jsp?valid");
} */
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
} 
%>