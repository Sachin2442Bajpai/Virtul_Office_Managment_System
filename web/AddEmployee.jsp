 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp" %>
<div><center>
       
             <span style="font-size:40px; color:brown; font-style:normal;">**Add New Employee**</span> 
        </b>
        
        <br>
        <br>
        <br>
        <form action="Addemp">
            <table width="800" border="1" cellpadding="10" bgcolor="lightYellow">
                <tr><td width="400">Employee Code(User)</td><td><input type="number" name="code"></td></tr>
                <tr><td width="400">Password</td><td><input type="password" name="pswd"></td></tr>
                <tr><td width="400">Employee Name</td><td><input type="text" name="name"></td></tr>
                <tr><td width="400">Date Of Birth</td><td><input type="date" name="dob"></td></tr>
                <tr><td width="400">Gender</td><td><input type="radio" name="gen" value="Male">Male<input type="radio" name="gen" value="Female">Female</td></tr>
                <tr><td width="400">Post</td><td><input type="text" name="post"></td></tr>
                <tr><td width="400">Address</td><td><input type="text" name="addr"></td></tr>
                <tr><td width="400">City</td><td><input type="text" name="city"></td></tr>
                <tr><td width="400">Contact</td><td><input type="number" name="cont"></td></tr>
                <tr><td width="400">Email</td><td><input type="email" name="mail"></td></tr>
                <tr><td width="400">Id Name</td><td><input type="text" name="idname"></td></tr>
                <tr><td width="400">Id Number</td><td><input type="number" name="idno"></td></tr>
                
                <tr><td width="400"><input type="submit" value="Register"></button></td><td><input type="reset" value="Reset"></td></tr>
            </table>
        </form>
        <br>
        <br>
    </center>
             <div class="footer" > 
<!--    <div class="footer_resize">-->
<p class="lf">&copy; sachinbajpai2442@gmail.com <a href=""></a>.</p>
      
<!--      <div style="clear:both;"></div>-->
    </div>
  </div>
</div>
           
