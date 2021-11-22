<%@include file="header.html"%>

<html lang=en>
<head>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<title>ACADEMY</title>
<body>
<img src="logo.png"  align="left"width="100" height="100">


<div class="w3-container">
  <div class="w3-bar w3-black">
   <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London1')">Add New Subject</button>
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Class</button>
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London2')">Add New Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Add New Teacher</button>
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'Paris1')">Registered Classes </button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Subjects</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo2')">Registered Students</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">Registered Teachers</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'yangon')">ALL Info</button>
     <a href="adminLogin.html" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  </div>
    <div id="London1" class="w3-container w3-border city">
  <br>

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Subjects</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewSubject.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Subject-id</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="sid">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="sname">
                                    </div>
                                </div>                              
                                   <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                         </form>       </div>
                           
                        </div>
                    </div>
            </div>
        </div>
   
  </main> 
  
  </div> 


<div id="London" class="w3-container w3-border city" style="display:none">
  <br>

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Classes</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewCLass.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Class-id</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="cid">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="cname">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Subject-id</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="csubject_id">
                                    </div>
                                </div>
                          

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                         </form>       </div>
						

                        
                        </div>
                    </div>
                   
            </div>
       	     <section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
         <th>Subject-id</th>
          <th>Name</th>
         
         
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
      <%try{
			Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from subject");
			while(rs.next()){
		%>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
         
          
        </tr>
		<%}}
      catch(Exception e)
      {
      }%>
      </tbody>
    </table>
  </div>
</section> </div>
  </main>  


  </div>

  <div id="London2" class="w3-container w3-border city" style="display:none">
  <br>

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">RollNo(id)</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="id">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Class-id</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="class_id">
                                    </div>
                                </div>
                          

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                         </form>       </div>
                           
                        </div>
                    </div>
            </div>
      <section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
         <th>Class-id</th>
          <th>Name</th>
          <th>Subject-id</th>
         
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
      <%try{
			Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from  class");
			while(rs.next()){
		%>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          
        </tr>
		<%}}
      catch(Exception e)
      {
      }%>
      </tbody>
    </table>
  </div>
</section>
  </div>
  </main>  </div> 

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>


<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Teacher</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="addNewTeacher.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Teacher-id</label>
                                    <div class="col-md-6">
                                        <input type="text"class="form-control" required="required" name="tid">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="tname">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Subject-Id</label>
                                    <div class="col-md-6">
                                        <input type="text" required="required" class="form-control" name="subject_id">
                                    </div>
                                </div>

                                
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                       Save
                                        </button>
                                    </div>
                         </form>       </div>
                           
                        </div>
                    </div>
            </div>
     <section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
         <th>Subject-id</th>
          <th>Name</th>
         
         
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
      <%try{
			Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from subject");
			while(rs.next()){
		%>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
         
          
        </tr>
		<%}}
      catch(Exception e)
      {
      }%>
      </tbody>
    </table>
  </div>
	</section>
   </div>   <br>
   </main>
    </div>
  <div id="Paris1" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
         <th>Class-id</th>
          <th>Name</th>
          <th>Subject-id</th>
         
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
      <%try{
			Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from  class");
			while(rs.next()){
		%>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          
        </tr>
		<%}}
      catch(Exception e)
      {
      }%>
      </tbody>
    </table>
  </div>
</section>
</div>

 
   <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
         <th>Subject-id</th>
          <th>Name</th>
         
         
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
      <%try{
			Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from subject");
			while(rs.next()){
		%>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
         
          
        </tr>
		<%}}
      catch(Exception e)
      {
      }%>
      </tbody>
    </table>
  </div>
</section>
</div>

  <div id="Tokyo2" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
         <th>RollNo</th>
          <th>Name</th>
          <th>Class-id</th>
         
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
      <%try{
			Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from student");
			while(rs.next()){
		%>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          
        </tr>
		<%}}
      catch(Exception e)
      {
      }%>
      </tbody>
    </table>
  </div>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
          <th>Teacher-id</th>
          <th>Name</th>
          <th>Subject-id</th>
          
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
     <%try{
      Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from teacher");
			while(rs.next()){
				%>
			
        <tr>
          <td><%=rs.getString(1)%></td>
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
         
        </tr>
         <% } }
        catch(Exception e){
        } %>
        </tbody>
    </table>
  </div>
</section>

</div>
<div id="yangon" class="w3-container w3-border city" style="display:none"> 
 <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
          <th>ROLLNO(id)</th>
          <th>Name</th>
          <th>CLASS</th>
          <th>SUBJECT</th>
          <th>TEACHER</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table style="padding=0 spacing=0 border=0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="project.connectionProvider" %>
     <%try{
      Connection con=connectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(" select student.id,student.name,class.cname,subject.sname,teacher.tname from (((student inner join class on student.class_id=class.cid) inner join subject on class.csubject_id=subject.sid)inner join teacher on teacher.subject_id=subject.sid)");
			while(rs.next()){
				%>
			
        <tr>
          <td><%=rs.getString(1)%></td>
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
        </tr>
         <% } }
        catch(Exception e){
        } %>
        </tbody>
    </table>
  </div>

</div>
    <hr class="new1">
  <h5 style="text-align:center">Note: contact Academy on any errors.
Designed and Developed by yagyesh</h5>
  <hr class="new1">
<h5 style="text-align:center">All Right Reserved @ ACADEMY </h5>
  <hr class="new1">
<br>
</body>
</html>