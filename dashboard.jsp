<%-- 
    Document   : dashboard
    Created on : 16 Apr, 2021, 4:35:39 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard Page</title>
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
            
            
            
            
            
        </style>
    </head>
    <body>
        <header>
            <h1 style="color: black">Dashboard</h1>
            <h1> style= "color:cyan">Welcome to Dashboard</h1>
        </header>
        <section>
          <% 
              if(session.getAttribute("sesname")==null)
              {
                  response.sendRedirect("newlog.jsp");
              }
            
          %>  
        </section>
        <footer>
            
        </footer>
    </body>
</html>
