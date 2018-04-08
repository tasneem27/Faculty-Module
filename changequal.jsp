<html>
    <head>
        
    </head>
    <body>
        
        HELLO
    <%@ page import ="java.sql.*" %>
    <%
        try{
       HttpSession sess = request.getSession(false); //use false to use the existing session
        String uname=(String)sess.getAttribute("username");   
        String exp = request.getParameter("exp");
        String dept = request.getParameter("dept"); 
        String uni[] = request.getParameterValues("uni"); 
        String board[] = request.getParameterValues("board"); 
        String school[] = request.getParameterValues("school"); 
        String year[] = request.getParameterValues("year"); 
        
        String marks[] = request.getParameterValues("marks"); 
    %>
        <%--
        out.println("WHY"+uname+name+fathername+address1+address2+phone+email+gender+pan+aadhar+joining+exp+dept+password+uni[0]+board[0]+school[0]+year[1]+marks[0]);
        --%> <%Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facultydb?" + "user=root&password=root");    
        out.println("hey"+uni.length);
        String query="update facultyp set exp='"+exp+"',dept='"+dept+"' where uname='"+uname+"'";
       
        
        Statement stat = conn.createStatement();
        String query3;
        stat.executeUpdate(query);
        out.println("hey"+uni.length);
        for(int i=0;i<uni.length;i++)
        {
            out.println("hey"+uni.length);
            query3="insert into facultyqual values('"+uname+"','"+uni[i]+"','"+board[i]+"','"+school[i]+"','"+year[i]+"','"+marks[i]+"')";
             stat.executeUpdate(query3);
        }
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

