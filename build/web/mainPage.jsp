<%-- 
    Document   : mainPage
    Created on : 27 Feb 2024, 16:20:17
    Author     : dumspicy
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./asset/stylesheet/reset.css" rel="stylesheet" type="text/css">
        <link href="./asset/stylesheet/mainpagestyle.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>JSP Page</title>
        <style>

        </style>
    </head>
    <body>
        <header style="height: 203px;">
            <%@include file="header.jsp" %>
        </header>
        <br/>
        <main>
            <section class="banner__filter">
                <div class="container" style="max-width: 1070px;">
                    <div class="banner__filter--content">
                        <!--banner left-->
                        <div class="banner__filter--left">
                            <h3 class="banner__left--heading">Tìm sân</h3>
                            <div class="banner__filter--form">
                                <form action="selectPitch" method="get">
                                    <label for="location">Địa điểm</label>
                                    <select name="pitch-location" class="banner__filter--location" id="location">
                                        <option value="1" ${requestScope.address == '1' ? 'selected' : ''}>Hà Nội</option>
                                        <option value="2" ${requestScope.address == '2' ? 'selected' : ''}>Tp Hồ Chí Minh</option>
                                        <option value="3" ${requestScope.address == '3' ? 'selected' : ''}>Đà Nẵng</option>
                                    </select>
                                    <label for="type">Kích thước sân</label>
                                    <select name="pitch-type" class="banner__filter--type" id="type">
                                        <option value="1" ${requestScope.type == '1' ? 'selected' : ''}>Sân 5</option>
                                        <option value="2" ${requestScope.type == '2' ? 'selected' : ''}>Sân 7</option>
                                        <option value="3" ${requestScope.type == '3' ? 'selected' : ''}>Sân 11</option>
                                    </select>
                                    <input type="submit" value="Tìm sân">
                                </form>
                            </div>
                        </div>

                        <!--banner right-->
                        <div class="banner__filter--right">
                            <h1 class="banner__right--heading">HIRE A PITCH</h1>
                            <h2 class="banner__right--sub-heading">OR FIND A GAME.</h2>
                            <div class="decor-list">
                                <img src="./asset/icon/bullseye-solid.svg" alt="decor">
                                <img src="./asset/icon/futbol-regular.svg" alt="decor">
                                <img src="./asset/icon/volleyball-solid.svg" alt="decor">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="triangle"></div>
            </section>
            <!--Product List-->
            <div class="product__list ">
                <div class="container">
                    <div class="product-items row justify-content-center">
                        <c:forEach items="${requestScope.ListPitch}" var="p">
                            <!--Product Start-->
                            <div class="col-lg-3 col-md-6 mb-5">
                                <div class="card h-100 product-card">
                                    <a href="<%=request.getContextPath()%>/ProductDetails.jsp?pitchId=${p.pitchId}">
                                        <!--Product Image-->
                                        <img class="product-items__image card-img-top" 
                                             src="${p.image}" 
                                             alt="..."
                                             />

                                        <!--Product Details-->
                                        <div class="card-body p4 product-card__details">
                                            <div class="text-right">
                                                <!--Product name-->
                                                <h5 class="mb-3"><span>${p.pitchName}</span></h5>
                                                <!--Product Size-->
                                                <h5 class="mb-3">Loại sân: <span>${p.pitchType.type}</span></h5>
                                                <!--Product Price-->
                                                <h5 class="mb-3">Giá thuê: <span><fmt:formatNumber value="${p.price}" pattern="###,###" /></span> </h5>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="footer.jsp" %>
    </body>
</html>
