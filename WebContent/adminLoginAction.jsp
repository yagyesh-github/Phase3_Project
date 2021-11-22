<%
String username1=request.getParameter("username");
String password=request.getParameter("password");

if(username1.equalsIgnoreCase("admin") &&password.equalsIgnoreCase("12345")){
	response.sendRedirect("adminHome.jsp");
}
else
	response.sendRedirect("errorAdminLogin.html");
%>