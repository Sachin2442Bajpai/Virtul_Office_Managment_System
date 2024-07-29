 

package admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
public class login extends HttpServlet {
 
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
         String utype=request.getParameter("t1");
         String user=request.getParameter("t2");
         String pswd=request.getParameter("t3");
         HttpSession session=request.getSession();
         session.setAttribute("user", user);
         DB.DBConnect db=new DB.DBConnect();
         db.pstmt=db.con.prepareStatement("select ac_status from login where user=? and pswd=? and utype=?");
      db.pstmt.setString(1,user);
      db.pstmt.setString(2,pswd);
      db.pstmt.setString(3,utype);
      
      db.rst=db.pstmt.executeQuery();
      if(db.rst.next())
      {
        if(db.rst.getString(1).equals("1")) 
        {
           if(utype.equalsIgnoreCase("Admin"))
           {
               response.sendRedirect("AdminHome.jsp");
           }
        }
        else if(utype.equalsIgnoreCase("Employee"))
        {
            response.sendRedirect("EmployeeHome.jsp");
        }
      }
      
      else
      {
          out.println("<html><body bgcolor=brown><script>alert('This Account has Blocked')</script></body></html>");
          
          response.sendRedirect("index.html");
      }
        }
        catch(Exception e)
        {
           e.printStackTrace() ;
        }
    }

     
}
