<html>
    <head>
    </head>
    <body>
    <%@ page import ="java.sql.*" %>
    <%
        try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facultydb?" + "user=root&password=root");    
        PreparedStatement pst = conn.prepareStatement("Select * from login where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
        {
            out.println("Valid login credentials"); 
            HttpSession sess = request.getSession(); 
            sess.setAttribute("username", username);
            response.sendRedirect("homef.jsp");
        }        
        else
        {
        %>
    <script>
        var ask = window.confirm("Wrong Username or Password");
        if (ask) {
        document.location.href = "index.jsp";
        } 
        else
            document.location.href = "index.jsp"; 
            </script> <%
            out.println("Invalid login credentials");
        session.setAttribute("Login_Expired","Expired") ;
     
        }            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
    </body>
</html>