<html>
    <head>
    </head>
    <body>
<%@ page import ="java.sql.*" %>
                
                
<%  
  

        String n=request.getParameter("val");
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facultydb?" + "user=root&password=root");    
        PreparedStatement pst = conn.prepareStatement("Select * from facultyp where uname LIKE ?");
        PreparedStatement pst1 = conn.prepareStatement("Select * from facultyqual where uname LIKE ?");
        pst.setString(1,"%"+n+"%");
        pst1.setString(1,"%"+n+"%");
        ResultSet rs = pst.executeQuery();    
        ResultSet rs1 = pst1.executeQuery();    
        if(rs.next() && rs1.next())           
        { %>
           Name
                        <div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("name")%></h2>
			</div><br>
			
			
			Father's Name<br/><div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("fathername")%></h2>
			</div>
			<!--<input type="text" id="fathername" name=fathername style="width:40%; height:30px;" value='<%=rs.getString("fathername")%>' required><br/-->
                        
                        Email ID<br>
                        <div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("email")%></h2>
			</div>
			<!--<textarea name="address1" form="regform" style="width:40%;" rows=4 minlength="10" value='<%=rs.getString("address1")%>'required>Enter permanent address here...</textarea>
			--><br>Joining Date<br>
                        <div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("joining")%></h2>
			</div>
			<!--<textarea name="address2" form="regform" style="width:40%;" rows=4 minlength="10" value='<%=rs.getString("address2")%>'required>Enter current address here...</textarea>
			--><br>Experience<br/><div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("exp")%></h2>
			</div>
			<!--<input type="tel" name="phone" id="contact" style="width:40%; height:30px;" value='<%=rs.getString("phone")%>' required>
			--><br>Department<br/><div class="box-header" style="margin-left:450px;width:35%;">
				<h2><%=rs.getString("dept")%></h2>
			</div>

<% } %>			<br/>
			</p>
			</form>
			</p>
		</div>
	</div>
</body>
</html>
