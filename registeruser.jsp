<html>
    <head>
    </head>
    <body>
        
        HELLO
    <%@ page import ="java.sql.*" %>
    <%
        try{
        out.println("Hey");
        String uname = request.getParameter("uname");   
        out.println(uname);
        String name = request.getParameter("name");
        out.println(name);
        String fathername = request.getParameter("fathername"); 
        out.println(fathername);
        String address1 = request.getParameter("address1"); 
        out.println(address1);
        String address2 = request.getParameter("address2"); 
        String phone = request.getParameter("phone"); 
        String email = request.getParameter("email");
        String pan = request.getParameter("pan"); 
        String aadhar = request.getParameter("aadhar"); 
        String joining = request.getParameter("joining"); 
        String exp = request.getParameter("exp");
        String password = request.getParameter("password"); 
        String gender = request.getParameter("gender"); 
        String dept = request.getParameter("dept"); 
        String uni[] = request.getParameterValues("uni"); 
        String board[] = request.getParameterValues("board"); 
        String school[] = request.getParameterValues("school"); 
        String year[] = request.getParameterValues("year"); 
        
        String marks[] = request.getParameterValues("marks"); 
        //String answer = request.getParameter("ans"); 
        //String sq = request.getParameter("sq"); 
        //out.println(answer+sq);
    %>
        <%--
        out.println("WHY"+uname+name+fathername+address1+address2+phone+email+gender+pan+aadhar+joining+exp+dept+password+uni[0]+board[0]+school[0]+year[1]+marks[0]);
        --%> <%Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facultydb?" + "user=root&password=root");    
        out.println("hey"+uni.length);
        String query="insert into facultyp values('"+uname+"','"+name+"','"+fathername+"','"+address1+"','"+address2+"','"+phone+"','"+email+"','"+gender+"','"+pan+"','"+aadhar+"','"+joining+"','"+exp+"','"+dept+"','"+password+"')";
        String query2="insert into login values('"+uname+"','"+password+"')";
        //String query4="insert into security values('"+uname+"','"+answer+"','"+sq+"')";
        
        Statement stat = conn.createStatement();
        String query3;
        stat.executeUpdate(query);
        stat.executeUpdate(query2);
        //stat.executeUpdate(query4);
       
        out.println("hey"+uni.length);
        for(int i=0;i<uni.length;i++)
        {
            out.println("hey"+uni.length);
            query3="insert into facultyqual values('"+uname+"','"+uni[i]+"','"+board[i]+"','"+school[i]+"','"+year[i]+"','"+marks[i]+"')";
             stat.executeUpdate(query3);
        }
       response.sendRedirect("index.jsp");
            stat.close();
            conn.close();   
   
     }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
    </body>
</html>
