<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links
  $("a").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
});
</script>
 
    
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
  height: 400px;
  
}

div.transbox2 {
  background: rgba(253, 254, 254 ,0.9);
  filter: alpha(opacity=60);
 
}

div.head {
 
  background: rgba(215, 219, 221 ,1);
  height: px;
}

div.foot {
 
  background: rgba(21, 67, 96 ,1);
  height: px;
  text-align: right;
  width:100%;
  magin-right: 50px;
  position:relative;
}

div.q1 {

  background: rgba(23, 32, 42 ,.0);
  filter: alpha(opacity=60);
  float: left;
  margin-left: 150px;
  magin-right: 500px;
  position: relative;
  width:300px;
}

div.q2 {
 
  background: rgba(23, 32, 42 ,.0);
  filter: alpha(opacity=60);
  display: inline-block;
  margin:0 auto;
  position: relative;
  width:300px;
  margin-left: 20px;

}
div.q3 {
 
  background: rgba(23, 32, 42 ,.0);
  filter: alpha(opacity=60);
  float: right;
  position: relative;
  width:320px;
  margin-right:150px;
}
div.transbox3 {
 
  text-align:center;
  background: rgba(23, 32, 42 ,.7);
  filter: alpha(opacity=60);
  position: relative;
  
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
    background-color: #21618C ;
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

figure:hover+span {
	bottom: -36px;
	opacity: 1;
}
.hover01 figure img {
	-webkit-transform: scale(1);
	transform: scale(1);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover01 figure:hover img {
	-webkit-transform: scale(1.3);
	transform: scale(1.3);
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
    <li class="active"><a class="active" href="homef.jsp">HOME</a></li>
  <li><a href="viewttf.jsp">VIEW TIME TABLE</a></li>
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
    <a href="javascript:void(0)" class="dropbtn"><%= sess.getAttribute("username") %></a>
    <div class="dropdown-content">
        <a class="content" href="profilef.jsp">MY PROFILE</a>
         <a class="content" href="searchf.jsp">SEARCH FACULTY</a>
      <a class="content" href="index.jsp">SIGN OUT</a>
    </div>
  </li>
</ul>
  
    <br>
    <h2 style="font-size:30px;font-family:Palatino;color:#F2F3F4;"><center><div class="transbox"><br><br>SHRI GOVINDRAM SEKSARIA INSTITUTE OF TECHNOLOGY AND SCIENCE<br><h2 style="font-size:40px;font-family:Palatino;color:#F2F3F4;"><div id="changeText" >Awesome Faculty Panel</div></h2><hr style="width:200px;border-color:#A2D9CE;"><br><a href="#feature" style="color: #E8DAEF; font-size: 30px; font-family: PT Serif Caption;">Feature List</a>&nbsp&nbsp&nbsp&nbsp<a id="top" href="#bottom" style="color: #E8DAEF; font-size: 30px; font-family: PT Serif Caption;">More Info</a> </div></center></h2>
    <p style="font-size:18px;font-family:lucida console"> <img src="" class="left" width="100%"><br>
        
        <a href="#top" id="bottom"></a>
    <div class="transbox2">
        <center><font size="4" face="Kefa" color="#138D75"> <div class="head"><br><b>- WELCOME TO THE FACULTY PORTAL -</b><br><br></div></font></center><br><br><br><br>
        <center><font size="5" face="Kefa"><b>ABOUT US</b></font></center><hr style="width:200px;border-color:#A2D9CE;">
        <font size="5" face="Kefa " color="#1A5276"> <center> <p style="line-height: 150%;">Shri Govindram Seksaria Institute of Technology and Science, Indore was established in 1952. SGSITS is recognized as a leading institute in the state of Madhya Pradesh and the western region consistently during its glorious journey of sixty years. It has been ranked among top 30-40 institutes on national level (including IITs and NITs) by independent bodies. Further looking to its credentials, All India Council for Technical Education (AICTE) and University Grant Commission (UGC), New Delhi, has declared the institute as autonomous in 1989. Under the autonomous state, the institute is affiliated to the Rajiv Gandhi Prodyogiki Vishwavidhyalaya (university of technology of M.P.) Bhopal. Presently, the institute offers ten UG courses (Regular), four UG courses (Part time), PG programs with twenty two specializations, two part time PG courses in various disciplines under the emerging areas of Engineering, Technology, Applied Sciences, Computer Applications, Management & Pharmacy. Apart from spacious class rooms and well equipped laboratories, the campus of the institute encompasses four boys hostels, two girls hostel, one transit hostel and 44 faculty quarters. Institute has central library which has vast collection of books, reference library and a large number of subscribed online and print journals. In addition, institute also houses various amenities such as Play ground, Gymnasium, Indoor Sports Complex, Guest House, a branch of Oriental Bank of Commerce, a branch of Institution of Engineers, Co-operative Stores, Canteen, Ladies Common Room, 
                Dispensary and office of SGSITS Alumni Association.</p></center> </font><br><br>
        </div>
             
             <a id="feature"></a>
             <div class="transbox3">
                 <div class="hover01 column">
                 <h4 style="color:#FDFEFE ;">
                     <center><font size="6" face="Kefa" color="white"><br><br><b>FEATURE LIST</b><br><hr style="width:200px;border:none;height:5px;background-color:#148F77;"><br></font></center><br>
                     <br><Br>
                     <div class="q1"><figure><img src="plane.png" height="100px" width="100px"></figure><br><br><font size="6" face="Kefa" color="white">Quality Education</font><br>
                         <hr style="width:320px;border:none;height:3px;background-color:#148F77;"><hr style="width:320px;border:none;height:3px;background-color:#148F77;"><br>
                         <font size="4" face="Kefa" >Provide Quality education with the best tools and smart classrooms.</font></div>

                    

                     <div class="q2"><figure><img src="person.png" height="90px" width="90px"></figure><br><br><font size="6" face="Kefa" color="white">One to one study</font> <br>
                          <hr style="width:320px;border:none;height:3px;background-color:#148F77;"><hr style="width:320px;border:none;height:3px;background-color:#148F77;"><br>
                          <font size="4" face="Kefa" >Professors make sure that one on one interaction is always possible with them.</font></div>
                     
                     
                     
                     <div class="q3"><figure><img src="arrow.png" height="90px" width="90px"></figure><br><br><font size="6" face="Kefa" color="white">Systematic Approach</font><br>
                          <hr style="width:320px;border:none;height:3px;background-color:#148F77;"><hr style="width:320px;border:none;height:3px;background-color:#148F77;"><br>
                          <font size="4" face="Kefa" >Weekly assignments and regular quizzes ensure that the syllabus is dealt with systematically.</font></div>
<br><br><br>
</h4>
                 <br><BR><BR><BR><BR>
                 </div>
             </div>
             <div class="foot">
                 <br><font color=white size=4>© 2017 sgsits.com | All Rights Reserved | &nbsp&nbsp</font><br>
                 
             </div>
  
   <script>

    var text = ["Unmatched Approach", "Unique Teaching Mediums","Awesome Faculty Panel"];
    var counter = 0;
    var elem = document.getElementById("changeText");
    setInterval(change, 1500);
    function change() {
     elem.innerHTML = text[counter];
        counter++;
        if(counter >= text.length) { counter = 0; }
    }
</script>


</body>
</html>

