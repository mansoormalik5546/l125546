<%-- 
    Document   : picture
    Created on : Oct 8, 2017, 8:36:17 PM
    Author     : muzammil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
 <head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
</head>
 <form action="employee_upload_profile_image.jsp" method="post" enctype
="multipart/form-data" name="form1" id="form1">
   <center>
   <table border="2">
       <tr>
	       <td align="right"><b>travellor name:</td>
		   <td ><input type="text" name="emp_name"></td>
	   </tr>
	   <tr>
	       <td align="right"><b>travellor Address:</td>
		   <td ><input type="text" name="address1"></td>
		   	   </tr>
	   <tr>
	       <td>
		   </td>
		   <td>
		      <input type="text" name="address2">
		   </td>
	   </tr>
	   <tr>
	       <td align="right"><b>Contact Number:</td>
		   <td ><input type="text" name="contact_number"></td>
	   </tr>
       <tr>
	       <td align="right"><b>confirm  Email ID:</td>
		   <td ><input type="text" name="email_id"></td>
	   </tr>
	          <tr>
	       <td align="right"><b>please upload your picture </td>
	       <td>
		       <input name="file" type="file" id="file">
		   <td>
	   </tr>
	   	 <tr>
		    <td align="center">
               <input type="submit" name="Submit" value="Submit"/>
			   <input type="reset" name="Reset" value="Reset"/>
      			</td>
		 </tr>
    </table>
	</center>
 </form>
 </body>
 </html>
