 
 <%@page import="DB.DBConnect"%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<div>
 <center>
     <br><b>
 <span style="font-size:40px;color:brown;font-style:normal;">**Search Employee**</span>
     </b><br><br><br>
 <%
 if(request.getParameter("code")==null) 
 {%>
 <form action="#">
 <table width="600" border="1" cellpadding="20">
 <tr><td>Enter Employee Code</td><td><input type="number" name="code"></td></tr>
 <tr><td><input type="submit" value="Submit"></td><td><input type="reset" 
value="Reset"></td></tr>
 </table>
 </form> 
 <%
 }
 else
 {
 String code=request.getParameter("code");
 DBConnect db=new DBConnect();
 db.pstmt=db.con.prepareStatement("select * from emp_mstr where ecode=?");

db.pstmt.setString(1, code);
 db.rst=db.pstmt.executeQuery();
 if(db.rst.next())
 {
 String v1=db.rst.getString(1);
 out.println("<form action=UpdateEmp>");
 out.println("<table width='800' border='1' cellpadding='10'>");
 out.println("<tr><td width='400'>Employee Code(User)</td><td><input type='number' name='code'value="+db.rst.getString(1)+"></td></tr>");
out.println("<tr><td width='400'>Employee Name</td><td><input type='text' name='name'value="+db.rst.getString(2)+" ></td></tr>");
out.println(" <tr><td width='400'>Date of Birth</td><td><input type='date' name='dob'value="+db.rst.getString(3)+" ></td></tr>");
out.println("<tr><td width='400'>Gender</td><td><input type='text' name='gen'value="+db.rst.getString(4)+" >");
out.println("<tr><td width='400'>Post</td><td><input type='text' name='post'value="+db.rst.getString(5)+"></td></tr> ");
out.println("<tr><td width='400'>Address</td><td><input type='text' name='addr'value="+db.rst.getString(6)+"></td></tr> ");
out.println("<tr><td width='400'>City</td><td><input type='text' name='city'value="+db.rst.getString(7)+"></td></tr> ");
out.println("<tr><td width='400'>Contact</td><td><input type='number' name='cont'value="+db.rst.getString(8)+"></td></tr> ");
out.println("<tr><td width='400'>Email</td><td><input type='email' name='mail'value="+db.rst.getString(9)+"></td></tr>");
out.println("<tr><td width='400'>Id Name</td><td><input type='text' name='idname'value="+db.rst.getString(10)+"></td></tr>");
 out.println("<tr><td width='400'>Id Number</td><td><input type='number' name='idno'value="+db.rst.getString(11)+"></td></tr>");
 out.println("<tr><td width='400'><input type='submit' value='Update'></td><td><input type='reset'value='Reset'></td></tr>");
 
 out.println(" </table></form>");

}
 else
 {
 out.println("<h1>Record does not Match"); 
 }
 }
 
 
 
 %>
        
</div>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
        <div class="footer" > 
<!--    <div class="footer_resize">-->
<p class="lf">&copy; sachinbajpai2442@gmail.com <a href=""></a>.</p>
      
<!--      <div style="clear:both;"></div>-->
    </div>
  </div>
 

