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
        function showEditBox() {

	    // Fetch the EditBoxContainer div

	    var container = document.getElementById("EditBoxContainer");

	     

	    // Make sure it was actually found.

	    if (container) {

	        // Create a new textarea

	       /* var area = document.createElement("textarea");

	        area.id = "MyEditBox";

	        area.style.width = "100px";

	        area.style.height = "40px";*/

	 	var table = document.getElementById("add");
    		var row = table.insertRow(1);
    		var cell1 = row.insertCell(0);
    		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);
		var cell5 = row.insertCell(4);
		cell1.innerHTML="<td><input type='text' name='uni'> </td>";
		cell2.innerHTML="<td><input type='text' name='board'> </td>";
		cell3.innerHTML="<td><input type='text' name='school'> </td>";
		cell4.innerHTML="<td><input type='text' name='year' min='1950' max='2016' type='date'> </td>";
		cell5.innerHTML="<td><input type='number' name='marks'> </td>";
	        // Add the text from PHP into the new textarea.

	     //   area.innerHTML = original_text;
	         

	        // Add it to the EditBoxContainer

	        container.appendChild(area);

	    }

	    else {

	        alert("WTF you have no EditBoxContainer!");

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
			</div><form name="registerform" action="changequal.jsp" method="post" id="regform">
			<p style="font-weight: 700;font-size:.8em;color: #888;letter-spacing: 1px;text-transform: uppercase;
			line-height: 2em;">
<table align=center id="add" width=25% cellpadding=0px style="font-weight: 700;font-size:.8em;color: 				#888;letter-spacing: 1px;text-transform: uppercase;
			line-height: 2em;">
			<tr>
				<th width=25%> Degree/Certificate</th>
				<th width=25%> University/Board</th>
				<th width=25%> Institute/School</th>
				<th width=25%> Year Of Passing</th>
				<th width=25%> CGPA/Percentage</th>
			</tr>

			<tr id="lol">
    			<td width="25%">
        			<input type="text" name="uni" />
   				</td>
    			<td width="25%" align="center">
        		 <input type="text" name="board" />
  	 			</td>
   				<td width="25%">
        		 <input type="text" name="school" />
    			</td>
    			<td width="25%">
        			<input type="text" name="year" min="1950" max="2016" type="date"/>
   				</td>
    			<td width="25%" align="center">
        		 <input type="number" step="any" name="marks" />
  	 			</td>
			</tr>
			
			
			</table>
			
			<a href="javascript: void(0);" id="addb" onclick="showEditBox()" style="height:20px;background-color:#665851; position:absolute; color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;position:relative;left:20px;">+ADD</a>

			<div id="EditBoxContainer"></div>
			<p style="font-weight: 700;font-size:.8em;color: #888;letter-spacing: 1px;text-transform: uppercase;
			line-height: 2em;">
			<br>Year's Of Experience<br/>
			<input type="number" name=exp id="workex" style="width:40%; height:30px;" required>
			<br>Department<br/>
			<select class="dropdown" id="cards" name="dept" onchange="new()" style="width:40%; height:45px;" >
			<option >Pick One</option>
			<option value="cs">Computer Science</option>
			<option value="it">Information Technology</option>
			<option value="ee">Electrical Engineering</option>
			<option value="ei">Electronics And Instrumentation</option>
			<option value="me">Mechanical Engineering</option>
			<option value="im">Industrial Management</option>
			<option value="ce">Civil Engineering</option>
			</select></br>
			
			<button type="submit" onclick="validateform()" style="width:30%; height:60px;font-size:15px;">Change</button>
			<br/>
			</p>
			</form>
			</p>
		</div>
	</div>

</body>
</html>

