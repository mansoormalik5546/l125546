<%-- 
    Document   : insert_data
    Created on : Oct 2, 2017, 9:36:01 PM
    Author     : muzammil
--%>


<%@page import="java.sql.*,java.util.*"%>

        <%
            String action =request.getParameter("action");
            if(action.equals("login")){
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud", "root", "");
           Statement st=con.createStatement();
           ResultSet rs= st.executeQuery("select * from login where email= "+email+",password= "+pass+"'");
           if ( rs.next()){
               response.sendRedirect("success.jsp");
           }
           else 
           {
               out.println("<script type=\"text/javascript\">");
               out.println("alert('email and password donot match');");
               out.println("location='index.html';");
               out.println("</script");
           }
            }
            catch(Exception e){
       // System.out.print(e);
        
        }
            
        }
            else
                if(action.equals("signup")){
                    response.sendRedirect("signup.jsp");
                }
           
        %>
  