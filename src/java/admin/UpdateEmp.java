  

package admin;

import DB.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class UpdateEmp extends HttpServlet {
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
          String code=request.getParameter("code");
          String name=request.getParameter("name");
          String dob=request.getParameter("dob");
          String post=request.getParameter("post");
          String addr=request.getParameter("addr");
          String city=request.getParameter("city");
          String cont=request.getParameter("cont");
          String mail=request.getParameter("mail");
          String idname=request.getParameter("idname");
          String idno=request.getParameter("idno");
          String gen=request.getParameter("gen");
          
          
          DBConnect db=new DBConnect();
          db.pstmt=db.con.prepareStatement("UPDATE emp_mstr SET ename=?,edob=?,egender=?,epost=?,eaddr=?,ecity=?,econt=?,email=?,idname=?,idno=?, WHERE ecode=?");
          db.pstmt.setString(1,name);
          db.pstmt.setString(2,dob);
          db.pstmt.setString(3,gen);
          db.pstmt.setString(4,post);
          db.pstmt.setString(5,addr);
          db.pstmt.setString(6,city);
          db.pstmt.setString(7,cont);
          db.pstmt.setString(8,mail);
          db.pstmt.setString(9,idname);
          db.pstmt.setString(10,idno);
          db.pstmt.setString(11,code);
          
          int i=db.pstmt.executeUpdate();
          if(i>0)
          {
              response.sendRedirect("AdminHome.jsp?msg=Record Update Successfully");
          }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
