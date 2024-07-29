<%-- 
    Document   : AttendaceReport
    Created on : Mar 6, 2024, 5:42:06 PM
    Author     : admin
--%>

<%@page import="DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<center><h2>Attendance Report </h2> 

<table width="1000" cellpadding="5" border="1" bgcolor="lightpink">
    
    <tr bgcolor="lightblue"><td>SNo.</td><td>Employee Code</td><td>Employee Name</td>
    <td>Employee Gender</td><td>Email Address</td><td>Attendance Date</td>
    <td>Time IN</td><td>Time Out</td></tr>

<%
String user=session.getAttribute("user").toString();
DBConnect db=new DBConnect();
db.pstmt=db.con.prepareStatement("SELECT emp_mstr.ecode,emp_mstr.ename,emp_mstr.ecode=emp_attendance.ecode and emp_attendance.ecode=?");
db.pstmt.setString(1, user);
db.rst=db.pstmt.executeQuery();
int count=1;
while(db.rst.next())
{
    out.println("<tr><td bgcolor=dodgerblue style='color:white;'>"+count+"</td><td>"+db.rst.getString(1)+"</td>"
    +"<td>"+ db.rst.getString(2)+"</td><td>"+ db.rst.getString(3)+"</td>"
            +"<td>"+db.rst.getString(4)+"</td>"+db.rst.getString(5)+"</td>"+db.rst.getString(6)+"</td><td>"+db.rst.getString(7)+"</td></tr>");
    
    count++;
}
 
%>
</table>
</center>
