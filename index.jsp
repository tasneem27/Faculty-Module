<!DOCTYPE html>
<html lang="en">

<head>
	
	<title>Faculty Login</title>


	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="animate.css"> 
	
	<link rel="stylesheet" href="style.css">

</head>

<body>

	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo"><span>Shri Govindram Seksaria Institute</span><br> Of Technology And Science </span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<p style="font-weight: 700;font-size:.8em;color: #888;letter-spacing: 1px;text-transform: uppercase;
			line-height: 2em;">
                        <form action="validlogin.jsp" method="post">
                            <div id="temp"> </div>   Username <br/>
			<input type="text" id="username" name="username">
			<br/>
			Password<br/>
			<input type="password" id="password" name="password">
			<br/>
			<button type="submit">Sign In</button>
			<br/>
			<br/><br/>
                        </form>
		</div><br/>
		<div class="login-box animated fadeInUp" id="r" style="position:relative; top:-285px;background-color: white;max-width: 340px;padding-bottom: 30px;border-radius: 5px;box-shadow: 0 5px 50px rgba(0,0,0,0.4);text-align: center;">
			<div class="box-header">
				<h2>Register</h2>
			</div><br/>
                        <br/>	<br>
			<button type="submit" onclick="location.href='register.html';" style= "font-size:15px;padding:20px;padding-left:68px;padding-right:68px;">Faculty</button>
                        <br/><br/><br/><br/><br><br>
		
		</div>
	</div>
</body>


</html>

