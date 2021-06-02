<%-- 
    Document   : newLog
    Created on : 6 Apr, 2021, 5:24:31 PM
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
                background-color:whitesmoke;
            }
            
            input[type="text"],input[type="password"]
            {
                width:350px;
                height: 30px;
                border-radius: 10px;
            }
            
            input[type="login"]
            {
                width:250px;
                height: 30px;
                border-radius: 10px;
                background-color: orange;
            }
            
            footer{
              height:100px;
                background-color:black;  
            }
            
        </style>
    </head>
    <body>
        <h1></h1>
        <header>
        </header>
        <section>
            <div style="margin-left: 500px; padding-top: 50px;">
                    <form action="Login" method="post">
                   
                   
                    <input type="text" name="txtid"  placeholder="Enter Employee id"/><br>
                    <br>
                    <input type="password" name="txtpass"  placeholder="Password"/><br>
                    <br>
                    <input type="submit" name="btnsubmit" value="Login"/>
                 </form>
            </div>
        
        </section>
        <footer>
        </footer>
    </body>
</html>
