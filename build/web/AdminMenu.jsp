<%-- 
    Document   : AdminHome
    Created on : Mar 13, 2024, 9:30:03 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Menu Example</title>
        <link href="asset/stylesheet/AdminMenu.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <ul class="menu">
            <li><a href="AdminHome.jsp">Home</a></li>
            <li><a href="AdminCustomer.jsp">Customers</a></li>
            <li><a href="AdminFD.jsp">Food & Drinks</a></li>
            <li><a href="AdminStuff.jsp">Stuffs</a></li>
            <li><a href="AdminStaff.jsp">Staffs</a></li>
            <li><a href="AdminPitch.jsp">Pitches</a></li>
            <li class="logout-button"><a href="UserLogin.jsp">Logout</a></li> <!-- Added logout button with separate class -->
        </ul>
    </body>
</html>
