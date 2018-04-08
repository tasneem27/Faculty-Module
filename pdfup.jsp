 <%@ page import ="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
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
#bigwrapper {
    background-image: url("uni.jpg");
    background-repeat: no-repeat;
    background-position: top center;
    background-attachment: fixed;
    background-size: 100%;
    width:100%;
}
div.transbox {
  margin:  0px;
  background: rgba(33, 97, 140,.5);
  filter: alpha(opacity=60);
  height: 600px;
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

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
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
<body id="bigwrapper">
 <%HttpSession sess = request.getSession(false); //use false to use the existing session
String username="maruto";   
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
  <li class="dropdown" id="dropdownactive">
    <a href="javascript:void(0)" class="dropbtn" id="dropdownactive" >UPLOAD</a>
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
<div class="transbox">

<button onclick="document.getElementById('id01').style.display='block'" style="text-align:center;position:relative;margin-left:50%;top:50%;width:auto;">Upload pdf</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="uploadServlet" enctype="multipart/form-data" method="post">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
 

    <div class="container">
      <label><b><h2>Please select a file:<br></h2>
</b></label>
      <input type="file" name="datafile" size="40">
</div>
<div>        
      <button type="submit">Upload</button>
</div>
  </form>
</div>
</div>
<script>
var modal = document.getElementById('id01');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<%       Blob image = null;
		Connection con = null;
		byte[] imgData = null ;
		Statement stmt = null;
		ResultSet rs = null;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facultydb?" + "user=root&password=root");
			stmt = con.createStatement();
			rs = stmt.executeQuery("select file from uploads where  username='"+username+"'");
			if (rs.next()) {
                                
				image = rs.getBlob(1);
				imgData = image.getBytes(1,(int)image.length());
			} else {
				
				return;
			}

			// display the image
         response.setContentType("application/pdf");
         OutputStream o = response.getOutputStream();
         o.write(imgData);
         o.flush();
         o.close();
		} catch (Exception e) {
			out.println("Unable To Display image");
			out.println("Image Display Error=" + e.getMessage());
			return;
		} finally {
			try {
				rs.close();
				stmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	%>
</body>
</html>

