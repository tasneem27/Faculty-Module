                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <!DOCTYPE html>
<html>
<head>
<style>

#bigwrapper {
    background-image: url("uni.jpg");
    background-repeat: no-repeat;
    background-position: top center;
    background-attachment: fixed;
    background-size: 100%;
    width:100%;
}
div.transbox {
  margin: -44px;
  background: rgba(33, 97, 140,.5);
  filter: alpha(opacity=60);
  height: 1000px;
}
.button1 {
    background-color: #2176AD;
    border: solid;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.modal {
    z-index: 1;
    display: none;
    overflow: auto;  
    background-color: rgba(0,0,0,0.4);
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 900px;
    height: 600px;
}

@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}
@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}
.close1, .close2, .close3, .close4 {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close1:hover, .close1:focus , .close2:hover, .close2:focus.close3:hover, .close3:focus.close4:hover, .close4:focus{
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
}

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
.active{
    background-color: #21618C;
}

li a:not(.active):not(.content):hover, .dropdown:hover .dropbtn {
    background-color: #008080;
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
<body id="bigwrapper">
<%HttpSession sess = request.getSession(false); 
%>
<ul>
  <li ><a href="homef.jsp">HOME</a></li>
  <li class="active"><a class="active" href="viewttf.jsp">VIEW TIME TABLE</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">CHANGE DETAILS</a>
    <div class="dropdown-content">
      <a class="content" href="personalf.jsp">PERSONAL</a>
      <a class="content" href="qualif.jsp">QULAIFICATIONS</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">UPLOAD</a>
    <div class="dropdown-content">
      <a class="content" href="pdfup.jsp">PDF/PPT</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn"><%= sess.getAttribute("username")%></a>
    <div class="dropdown-content">
      <a class="content" href="profilef.jsp">MY PROFILE</a>
       <a class="content" href="searchf.jsp">SEARCH FACULTY</a>
      <a class="content" href="index.jsp">SIGN OUT</a>
    </div>
  </li>
</ul>
    <br><br><br>
    
    
   <div class="transbox">
        <br><br>
       
       <center> <button id="CSE" class="button1"> Computer Science Department Timetable</button></center>
  <div id="M1" class="modal">
     
    <div class="modal-header">
      <span  class="close1"></span>
      <h2><center>Time Table</center></h2>
    </div>
      <br><br>
    <div class="modal-body">
        <center><img src="CS.png"></center>
    </div>
   
</div>

              
       <br>
       <center> <button id="CE" class="button1"> Civil Engineering Department Timetable</button></center>
  <div id="M2" class="modal">
     
    <div class="modal-header">
      <span class="close2">&times;</span>
      <h2><center>Time Table</center></h2>
    </div>
      <br><br>
    <div class="modal-body">
        <center><img src="CE.png"></center>
    </div>
   
</div>
       
       
             <br>
       <center> <button id="EE" class="button1"> Electrical Engineering Department Timetable</button></center>
  <div id="M3" class="modal">
     
    <div class="modal-header">
      <span class="close3">&times;</span>
      <h2><center>Time Table</center></h2>
    </div>
      <br><br>
    <div class="modal-body">
        <center><img src="EE.png"></center>
    </div>
   
</div>
       
                    <br>
       <center> <button id="IT" class="button1"> Information Technology Department Timetable</button></center>
  <div id="M4" class="modal">
     
    <div class="modal-header">
      <span class="close4">&times;</span>
      <h2><center>Time Table</center></h2>
    </div>
      <br><br>
    <div class="modal-body">
        <center><img src="IT.png"></center>
    </div>
   
</div>
   
        
    
 
 
</div>
<script>
var modal = document.getElementById('M1');
var btn = document.getElementById("CSE");
var span = document.getElementsByClassName("close1")[0]; 
btn.onclick = function() {
    modal.style.display = "block";
}
span.onclick = function() {
    modal.style.display = "none";
}
</script>

<script>
var modal = document.getElementById('M2');
var btn = document.getElementById("CE");
var span = document.getElementsByClassName("close2")[0]; 
btn.onclick = function() {
    modal.style.display = "block";
}
span.onclick = function() {
    modal.style.display = "none";
}
</script>

<script>
var modal = document.getElementById('M3');
var btn = document.getElementById("EE");
var span = document.getElementsByClassName("close3")[0]; 
btn.onclick = function() {
    modal.style.display = "block";
}
span.onclick = function() {
    modal.style.display = "none";
}
</script>

<script>
var modal = document.getElementById('M4');
var btn = document.getElementById("IT");
var span = document.getElementsByClassName("close4")[0]; 
btn.onclick = function() {
    modal.style.display = "block";
}
span.onclick = function() {
    modal.style.display = "none";
}
</script>

</body>
</html>
