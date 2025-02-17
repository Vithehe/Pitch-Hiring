<%-- 
    Document   : addfd
    Created on : Mar 13, 2024, 8:19:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Food Item</title>  
        <link href="asset/stylesheet/addfd.css" rel="stylesheet" type="text/css">

    </head>
    <body>
        <div class="container">
            <h1>Add Food Item</h1>
            <form action="savefd.jsp" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="id">ID:</label>
                    <input type="text" id="id" name="id" required>
                </div>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="amount">Amount:</label>
                    <input type="number" id="amount" name="amount" required>
                </div>
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="number" id="price" name="price" step="0.01" required>
                </div>
                <div class="form-group">
                    <label for="type">Type:</label>
                    <select id="type" name="type" required>
                        <option value="Food">Food</option>
                        <option value="Drink">Drink</option>
                        <option value="Dessert">Dessert</option>
                        <option value="Fruit">Fruit</option>

                    </select>
                </div>
                <div class="form-group">
                    <label for="image">Image:</label>
                    <input type="file" id="image" name="image" accept="image/*" required>
                </div>
                <div class="button-group">
                    <input type="submit" value="Save">
                    <input type="reset" value="Reset">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
