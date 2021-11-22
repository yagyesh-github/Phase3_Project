<img src="logo.png"  align="left"width="150" height="150">
<center><img src="dgi.png" width="150" height="150">
</center>
    <a href="dgiOneView.html">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table style="padding=0 spacing=0 border=0">
      <thead>
        <tr>
          <th>Institution Name: ACADEMY</th>
         
        </tr>
      </thead>
      <thead>
        <tr>
        
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  
</head>
<body>
<hr class="new1">
  <table>
    <thead>
      <tr>
        <td colspan="3">Student</td>
        <td rowspan="2">CLASS</td>
        <td rowspan="2">Subject</td>
        <td rowspan="2">Teacher</td>
        
        
      </tr>
      <tr>
        <td>RollNo(id) </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
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
          <td><%=rs.getString(1) %></td>
          <td colspan="2"><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
           <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
          
        </tr>
		<%}

		}
		catch(Exception e){
			
		}%>
      </tbody>
    </table>
  

     <hr class="new1">
  
  <hr class="new1">
<div style="text-align:center"><h6>All Right Reserved @ BTech Days :: 2015-2020</h6></div> 
  <hr class="new1">
</body>

