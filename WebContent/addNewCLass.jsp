<%@page import="project.connectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String cid=request.getParameter("cid");
String cname=request.getParameter("cname");
String csubject_id=request.getParameter("csubject_id");

try{
	Connection con= connectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into class values('"+cid+"','"+cname+"','"+csubject_id+"')");
	response.sendRedirect("adminHome.jsp");
}catch(Exception e){
	out.println("CLASS WITH SAME ID EXISTS!!!!/n"); 
	out.println(""); 
	
	
}

	%>