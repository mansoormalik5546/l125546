<%-- 
    Document   : signup
    Created on : Oct 2, 2017, 10:47:49 PM
    Author     : muzammil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String action =request.getParameter("action");
            if (action.equals("signup")){
                
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
           

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud", "", "");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into signup(firstname,lastname,email,pass) values('"+fname+"','"+lname+"','"+email+"','"+pass+")");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e){
        //System.out.print(e);
      
        }
            }
         %>   
    </body>
</html>
