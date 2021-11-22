<%@page import="project.connectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String id=request.getParameter("id");
String name=request.getParameter("name");
String class_id=request.getParameter("class_id");

try{
	Connection con= connectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student values('"+id+"','"+name+"','"+class_id+"')");
	response.sendRedirect("adminHome.jsp");
}catch(Exception e){
	out.println("try giving other roll no."); 
	
}

	%>