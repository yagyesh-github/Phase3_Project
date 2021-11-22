<%@page import="project.connectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String sid=request.getParameter("sid");
String sname=request.getParameter("sname");

try{
	Connection con= connectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into subject values('"+sid+"','"+sname+"')");
	response.sendRedirect("adminHome.jsp");
}catch(Exception e){
	out.println("SUBJECT WITH SAME ID EXISTS!!!"); 
}

	%>