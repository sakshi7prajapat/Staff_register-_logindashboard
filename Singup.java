/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/Singup"})
   public class Singup extends HttpServlet{
      protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
          PrintWriter out = response.getWriter();
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffattend","root","");
            Statement st=conn.createStatement();
            int x=st.executeUpdate("insert into staffinfo(staffid,name,mobile,gmail,password) values('"+request.getParameter("txtstaffid")+"','"+request.getParameter("txtname")+"','"+request.getParameter("txtmob")+"','"+request.getParameter("txtgmail")+"','"+request.getParameter("txtpass")+"')");
            if(x!=0){
                response.sendRedirect("login.jsp?q=regester successfully");
            }
            else{
                response.sendRedirect("login.jsp?q=regester not successfully");
            }
          }
          catch(ClassNotFoundException | SQLException | IOException e){
              
          out.print(e.getMessage());
          }
        }
   }