<%-- 
    Document   : login
    Created on : 7 Apr, 2021, 4:47:47 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            *
            {
                margin:0px;
            }
            
            header{
                height:100px;
                background-color:black;
                
            }
            header a{
                margin-left: 20px;
                font-size: 25px;
                font-weight: bolder;
                text-decoration: none;
                
            }
            section{
                height:500px;
                background-color:white;
            }
            input[type="text"],input[type="password"]
            {
                width:350px;
                height: 30px;
                border-radius: 10px;
            }
            input[type="Sing up"]
            {
                width:250px;
                height: 30px;
                border-radius: 10px;
                background-color: orange;
            }
            
            
            
        </style>
    </head>
    <body>
        <header>
            <h4 style="color:white;">Log In</h4> 
            <section>
            <div style="margin-left: 500px;padding-top: 50px;">
           <h1>Staff SIGN UP FORM</h1> 
           
           <form action="Singup" method="post">
               <input type="text" name="txtstaffid" placeholder="Enter Staff ID" required="" />
               <br><br>
               <input type="text" name="txtname" placeholder="Enter Staff Fullname" required="" />
               <br><br>
               <input type="text" name="txtmob" placeholder="Enter Staff Mobile number" required=""/>
               <br><br>
               <input type="text" name="txtgmail" placeholder="Enter Email" required=""/>
               <br><br>
               <input type="password" name="txtpass" placeholder="Enter Password" required=""/>
               
               <br><br>
               <input type="submit" name="btnsubmit" value="SIGN UP" />
               
           </form>
              <%
              if(request.getParameter("q")!=null)
              
               {
                  out.print(request.getParameter("q"));
              }
              %>
            </div>
            <footer>
                
            </footer>
        </header>
    </body>
</html>
