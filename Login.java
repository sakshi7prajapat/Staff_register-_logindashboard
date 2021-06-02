/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

       protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
    {
       PrintWriter out=response.getWriter();
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/staffattend","root","");
           Statement st = conn.createStatement();
           ResultSet x = st.executeQuery("select * from staffinfo where staffid='"+request.getParameter("txtid")+"' and password='"+request.getParameter("txtpass")+"'");
         if(x.next()){
             HttpSession session = request.getSession();
             session.setAttribute("sesname",x.getString(2));
             response.sendRedirect("dashboard.jsp");
         }
         else{
             response.sendRedirect("newlog.jsp?q=login not successfully");
         }
       }
       catch(ClassNotFoundException | SQLException | IOException e)
       {
         out.print(e.getMessage());  
       }
    }
}