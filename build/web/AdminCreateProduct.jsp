<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/>
        <title>Sparkling Shop - Admin Create Product</title>
        <%
            session = request.getSession(false);
            Account a = (Account) session.getAttribute("acc");
            boolean isLoggedIn = (session != null && session.getAttribute("acc") != null && a.getIsAdmin() == 1);
            if (!isLoggedIn) {
                response.sendRedirect(request.getContextPath() + "/Login.jsp");
            }
        %>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            h2 {
                font-size: 24px;
                font-weight: bold;
                margin: 20px 0;
            }

            .form {
                max-width: 600px;
                margin: 20px auto;
                padding: 20px;
                border: 1px solid #ccc;
            }

            .div {
                margin: 10px 0;
            }

            .label {
                display: block;
                font-size: 16px;
                font-weight: bold;
                margin-bottom: 5px;
            }

            .data {
                padding: 10px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
                width: 100%;
                box-sizing: border-box;
                margin-top: 5px;
            }

            .submit {
                background-color: #007bff;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 10px;
            }

            .cancel {
                display: inline-block;
                background-color: #ccc;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 10px;
                text-decoration: none;
            }

            .cancel:hover {
                background-color: #aaa;
            }

            .data:focus {
                border-color: #007bff;
                outline: none;
            }
        </style>
    </head>
    <body>
        <div>
            <div class="header">
                <!-- Start Top Nav -->
                <jsp:include page="TopNav.jsp"></jsp:include>
                    <!-- End Top Nav -->
                    <!-- Start header -->
                <jsp:include page="Header.jsp"></jsp:include>
                    <!-- End header -->
                </div>

                <div>
                    <form class="form" action="admincreateproduct" method="POST">    
                        <h2>Create Product</h2>
                        <div class="div">
                            <label class="label">Name</label>
                            <input class="data" name="name" type="text" placeholder="Name of Product" required="">
                        </div>
                        <div class="div">
                            <label class="label">Image</label>
                            <input class="data" name="image" type="text" placeholder="Link Image of Product" required="">
                        </div>
                        <div class="div">
                            <label class="label">Price</label>
                            <input class="data" name="price" type="number" placeholder="Price of Product">
                        </div>
                        <div class="div">
                            <label class="label">Description</label>
                            <textarea class="data" name="description" row="20" cols="30" required=""></textarea>
                        </div>
                        <div class="div">
                            <label class="label">Quantity</label>
                            <input class="data" name="quantity" type="number" required="">
                        </div>
                        <div class="div">
                            <label class="label">Origin</label>
                            <input class="data" name="origin" type="text" placeholder="Origin of Product" required="">
                        </div>
                        <div class="div">
                            <label class="label">Category</label>
                            <select class="data" name="category">
                            <c:forEach items="${listC}" var="i">
                                <option value="${i.cid}">${i.cname}</option>
                            </c:forEach>   
                        </select>
                    </div>
                    <div class="div">
                        <label class="label">Seller</label>
                        <select class="data" name="seller">
                            <c:forEach items="${listS}" var="o">
                                <option value="${o.id}">${o.name}</option>
                            </c:forEach>   
                        </select>
                    </div>
                    <div class="div">
                        <a class="cancel" href="adminmanagerproduct">Cancel</a>
                        <input class="submit" type="submit" value="Add">
                    </div>
                </form>
            </div>

            <div>
                <jsp:include page="Footer.jsp"></jsp:include> 
            </div>
        </div>
    </body>
</html>
