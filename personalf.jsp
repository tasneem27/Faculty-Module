<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
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
<script>
function validateform()
		{
                        
			var x=document.forms["registerform"]["name"].value;
			if(x=="")
				alert("Fill your name .");
			var pwd=document.forms["registerform"]["password"].value;
			if(pwd.length>6){
			if(pwd.match(/[^0-9a-z]/i))
    				alert("Only letters and digits allowed!");
			else if(!pwd.match(/\d/))
    				alert("At least one digit required!");
			else if(!pwd.match(/[a-z]/i))
    				alert("At least one letter required!");
                        
                        }
			else
				alert("Must have atleast 6 letters");
			var pwd2=document.forms["registerform"]["password2"].value;
			if(pwd!=pwd2) 
				alert("Passwords are not samEe");
                       
			var x = document.forms["registerform"]["email"].value;
    			var atpos = x.indexOf("@");
    			var dotpos = x.lastIndexOf(".");
    			if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        			alert("Not a valid e-mail address");
       
    			
                    }
		}
                </script>
</head>
<body>
 <%HttpSession sess = request.getSession(false); //use false to use the existing session
    %>
<ul>
  <li ><a href="homef.jsp">HOME</a></li>
  <li><a href="viewttf.jsp">VIEW TIME TABLE</a></li>
  <li class="dropdown" id="dropdownactive">
    <a href="javascript:void(0)" class="dropbtn" id="dropdownactive">CHANGE DETAILS</a>
    <div class="dropdown-content">
      <a class="content" href="personalf.jsp">PERSONAL</a>
      <a class="content" href="qualif.jsp">QULAIFICATIONS</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn" >UPLOAD</a>
    <div class="dropdown-content">
      <a class="content" href="pdfup.jsp">PDF/PPT</a>
 
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn"><%= sess.getAttribute("username") %></a>
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
		<div class="login-box" style="background-color: white; max-width:100%; position: relative; top: 30%; left: 					0px; padding-bottom: 3%; border-radius: 5px; box-shadow: 0 5px 50px rgba(0,0,0,0.4); 					text-align: center;overflow-x: hidden;
    overflow-y: hidden;">
			<div class="box-header">
				<h2>Make Changes</h2>
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
			
			Name<br/>
			<input type="text" name="name" id="name" style="width:40%; height:30px;" value='<%=rs.getString("name")%>' required><br>
			
			
			Father's Name<br/>
			<input type="text" id="fathername" name=fathername style="width:40%; height:30px;" value='<%=rs.getString("fathername")%>' required><br/>
			Permanent Address<br>
			<textarea name="address1" form="regform" style="width:40%;" rows=4 minlength="10" required><%=rs.getString("address1")%></textarea>
			<br>Current Address<br>
			<textarea name="address2" form="regform" style="width:40%;" rows=4 minlength="10" required><%=rs.getString("address2")%></textarea>
			<br>Contact Number<br/>
			<input type="tel" name="phone" id="contact" style="width:40%; height:30px;" value='<%=rs.getString("phone")%>' required>
			<br>Email ID<br/>
			<input type="email" name="email" id="email" style="width:40%; height:30px;" value='<%=rs.getString("email")%>' required><br>

			<br>PAN Number<br/>
			<input type="tel" name="pan" id="pan" style="width:40%; height:30px;"value='<%=rs.getString("pan")%>' required>
			<br>Aadhar Number<br/>
			<input type="tel" name="aadhar" id="aadhar" style="width:40%; height:30px;"value='<%=rs.getString("aadhar")%>' required></br>
                        <br/>Password <br/>
			<input type="password" name="password" id="password1" style="width:40%; height:30px;" value='<%=rs.getString("password")%>' ><br>
			Confirm Password<br/>
			<input type="password" id="password2" style="width:40%; height:30px;" value='<%=rs.getString("password")%>'>
			<br/>
<button type="submit" onclick="validateform()" style="width:30%; height:60px;font-size:15px;">Change</button>
<% } %>			<br/>
			</p>
			</form>
			</p>
		</div>
	</div>

</body>
</html>

