<%@page import="project.connectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String tid=request.getParameter("tid");
String tname=request.getParameter("tname");
String subject_id=request.getParameter("subject_id");

try{
	Connection con= connectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into teacher values('"+tid+"','"+tname+"','"+subject_id+"')");
	response.sendRedirect("adminHome.jsp");
}catch(Exception e){
	out.println("TEACHER WITH SAME ID EXISTS!!!"); 
}

	%>