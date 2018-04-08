<html>
    <head>
    </head>
    <body>
        
        HELLO
    <%@ page import ="java.sql.*" %>
    <%
        try{
        out.println("Hey");
        String name = request.getParameter("name");
        String fathername = request.getParameter("fathername"); 
        String address1 = request.getParameter("address1"); 
        
        String address2 = request.getParameter("address2"); 
        String phone = request.getParameter("phone"); 
        String email = request.getParameter("email");
        String pan = request.getParameter("pan"); 
        String aadhar = request.getParameter("aadhar"); 
        
        String password = request.getParameter("password"); 
       
         
        
    %>
        <%--
        out.println("WHY"+uname+name+fathername+address1+address2+phone+email+gender+pan+aadhar+joining+exp+dept+password+uni[0]+board[0]+school[0]+year[1]+marks[0]);
        --%> <%Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facultydb?" + "user=root&password=root");    
         HttpSession sess = request.getSession(false); 
        String uname=(String)sess.getAttribute("username");
        String query="update facultyp set name='"+name+"',fathername='"+fathername+"',address1='"+address1+"',address2='"+address2+"',phone='"+phone+"',email='"+email+"',pan='"+pan+"',aadhar='"+aadhar+"',password='"+password+"' where uname='"+uname+"'";
        String query2="update login set password='"+password+"' where username='"+uname+"'";
        
        Statement stat = conn.createStatement();
        stat.executeUpdate(query); 
        stat.executeUpdate(query2); 
       response.sendRedirect("homef.jsp");
            stat.close();
            conn.close();   
   
     }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
    </body>
</html>
