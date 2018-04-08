<!DOCTYPE html>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<html>
<head>
     <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' 			rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="style.css">
<style>
body{
    margin:0px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 20px 30px;
    text-decoration: none;
    width:213px;
}
.active , #dropdownactive{
    background-color: green;
}

li a:not(.active):not(.content):not(#dropdownactive):hover, .dropdown:hover .dropbtn {
    background-color: brown;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 270px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #f1f1f1;
    width:240px;
}

.dropdown:hover .dropdown-content {
    display: block;
}
/*----------------------------------MEDIA QUERIES--------------------------------*/
@media(min-width: 1200px)
{
  li{
    width:20%;
  }
  li a, .dropbtn{
    padding:7%;
    width:100%;
  }
  .dropdown-content{
    min-width:23%;
  }
  .dropdown-content a{
    padding:5%;
  }
  .dropdown-content a:hover{
    width:90%;
  }
}
@media(min-width: 992px) and (max-width: 1199px)
{
  li{
    width:20%;
  }
  li a, .dropbtn{
    padding:10%;
    width:100%;
    height:200%;
  }
  .dropdown-content{
    min-width:23%;
  }
  .dropdown-content a{
    padding:5%;
  }
  .dropdown-content a:hover{
    width:90%;
  }
}
@media(max-width: 991px)
{
  li{
    width:100%;
  }
  li a, .dropbtn{
    padding:3%;
    width:100%;
  }
  .dropdown-content{
    min-width:100%;
  }
  .dropdown-content a{
    padding:1.5%;
  }
  .dropdown-content a:hover{
    width:120%;
  }
}
</style>
</head>
<body>
 <%HttpSession sess = request.getSession(false); //use false to use the existing session
    %>
<ul>
  <li ><a href="homef.jsp">HOME</a></li>
  <li><a href="viewttf.jsp">VIEW TIME TABLE</a></li>
  <li class="dropdown" >
    <a href="javascript:void(0)" class="dropbtn">CHANGE DETAILS</a>
    <div class="dropdown-content">
      <a class="content" href="personalf.jsp">PERSONAL</a>
      <a class="content" href="qualif.jsp">QULAIFICATIONS</a>
    </div>
  </li>
  <li class="dropdown" >
    <a href="javascript:void(0)" class="dropbtn">UPLOAD</a>
    <div class="dropdown-content">
      <a class="content" href="pdfup.jsp">PDF/PPT</a>
   
    </div>
  </li>
  <li class="dropdown" id="dropdownactive">
    <a href="javascript:void(0)" class="dropbtn" id="dropdownactive"><%= sess.getAttribute("username") %></a>
    <div class="dropdown-content">
         <a class="content" href="profilef.jsp">MY PROFILE</a>
          <a class="content" href="searchf.jsp">SEARCH FACULTY</a>
      <a class="content" href="index.jsp">SIGN OUT</a>
    </div>
  </li>
</ul>
<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>Shri Govindram Seksaria Institute</span><br> Of 				Technology And Science </span></h1>
		</div><br/><br/>
		<div class="login-box" style="background-color: white; opacity:0.9;max-width:100%; position: relative; top: 30%; left: 					0px; padding-bottom: 3%; border-radius: 5px; box-shadow: 0 5px 50px rgba(0,0,0,0.4); 					text-align: center;overflow-x: hidden;
    overflow-y: hidden;">
			<div class="box-header">
				
    <%                              Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facultydb", "root", "root");
    String uname=(String)sess.getAttribute("username");
    String query = "select * from facultyp where uname='"+uname+"'";
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(query);
    %>
    </div><form name="registerform" action="changeuser.jsp" method="post" id="regform">
			<p style="font-weight: 700;font-size:.8em;color: #888;letter-spacing: 1px;text-transform: uppercase;
			line-height: 2em;">
                            <%
if(rs.next()){
%>
			
			Name
                        <div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("name")%></h2>
			</div><br>
			
			
			Father's Name<br/><div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("fathername")%></h2>
			</div>
			<!--<input type="text" id="fathername" name=fathername style="width:40%; height:30px;" value='<%=rs.getString("fathername")%>' required><br/-->
                        
                        Permanent Address<br>
                        <div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("address1")%></h2>
			</div>
			<!--<textarea name="address1" form="regform" style="width:40%;" rows=4 minlength="10" value='<%=rs.getString("address1")%>'required>Enter permanent address here...</textarea>
			--><br>Current Address<br>
                        <div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("address2")%></h2>
			</div>
			<!--<textarea name="address2" form="regform" style="width:40%;" rows=4 minlength="10" value='<%=rs.getString("address2")%>'required>Enter current address here...</textarea>
			--><br>Contact Number<br/><div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("phone")%></h2>
			</div>
			<!--<input type="tel" name="phone" id="contact" style="width:40%; height:30px;" value='<%=rs.getString("phone")%>' required>
			--><br>Email ID<br/><div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("email")%></h2>
			</div>
			<!--<input type="email" name="email" id="email" style="width:40%; height:30px;" value='<%=rs.getString("email")%>' required><br>-->

			

<% } %>			<br/>
			</p>
			</form>
			</p>
		</div>
	</div>
</body>
</html>

