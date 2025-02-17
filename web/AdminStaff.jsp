<%-- 
    Document   : AdminStaff
    Created on : Mar 13, 2024, 11:29:51 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff List</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link href="asset/stylesheet/AdminStaff.css" rel="stylesheet" type="text/css">

        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Are you sure to delete category with id = " + id + "?")) {
                    window.location = "deleteStaff?id=" + id;
                }
            }
        </script>
    </head>
    <body>
        <%@ include file="AdminMenu.jsp" %>
        <%
      //get List of Customer
        
        
        %>
        <div class="container">
            <div class="header">
                <h1>Staff List</h1>
                <a href="<%=request.getContextPath()%>/addstaff.jsp" class="add-staff">Add Staff</a>
            </div>

            <table>
                <thead>
                    <tr>

                        <th>Display Name</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Image</th>
                        <th>Action</th>

                    </tr>
                </thead>
                <%
                // vong for cho list se duoc dien o day
            
                %>
                <tbody>
                    <tr>

                        <td>John Doe</td> <%-- getName o day co the xem them tinh nang an vao de hien ra chi tiet nguoi dung --%>
                        <td>123456789</td> <%-- getPhoneNumber --%>
                        <td>johndoe@example.com</td> <%-- getMail --%>
                        <td><img src="customer_image.jpg" alt="Customer Image" width="100"></td> 
                        <td class="action-links">
                            <a href="editstaff.jsp?id=1"><i class="fas fa-pen"></i></a> <%-- dieu den trang chinh sua --%>
                            <a href="#" onclick="doDelete('<%=1%>')"><i class="fas fa-trash"></i></a> <%-- xoa luon roi hien tren trang (onclick thi phai get id cua nguoi bi xoa) --%>
                        </td>
                    </tr>
                    <!-- Add more customer rows here -->
                </tbody>
            </table>
        </div>
    </body>
</html>
