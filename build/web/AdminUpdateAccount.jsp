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
        <title>Sparkling Shop - Admin Update Account</title>
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
                    <form class="form" action="adminupdateaccount" method="POST">   

                        <h2>Update Account</h2>
                        <div class="div">
                            <label class="label">Id</label>
                            <input class="data" value="${load.id}" name="id" type="text" placeholder="" readonly required="">
                    </div>
                    <div class="div">
                        <label class="label">Name</label>
                        <input class="data" value="${load.name}" name="name" type="text"  required="">
                    </div>
                    <div class="div">
                        <label class="label">Username</label>
                        <input class="data" value="${load.username}"  name="Username" type="text" readonly required="">
                    </div>
                    <div class="div">
                        <label class="label">Password</label>
                        <input class="data" value="${load.password}"  name="password" type="text" readonly required="">
                    </div>
                    <div class="div">
                        <label class="label">Address</label>
                        <input class="data" value="${load.address}"  name="address" type="text"  required="">
                    </div>
                    <div class="div">
                        <label class="label">Phone Number</label>
                        <input class="data" value="${load.phonenumber}"  name="phonenumber" type="tel" pattern="[0]{1}[3|5|7|8|9]{1}[0-9]{8}" required="">
                    </div>
                    <div class="div">
                        <label class="label">Age</label>
                        <input class="data" value="${load.age}"  name="age" type="text" min="18" max="100" required="">

                    </div> 
                    <div class="div">
                        <label class="label">Seller</label>
                        <select class="data" name="seller">
                            <option ${load.isSeller == 1 ? "selected" : ""} value="1">Yes</option> 
                            <option ${load.isSeller == 0 ? "selected" : ""} value="0">No</option> 
                        </select> 
                    </div>
                    <div class="div">
                        <label class="label">Admin</label>
                        <select class="data" name="admin">
                            <option ${load.isAdmin == 1 ? "selected" : ""} value="1">Yes</option> 
                            <option ${load.isAdmin == 0 ? "selected" : ""} value="0">No</option> 
                        </select> 
                    </div>
                    <div class="div">
                        <a class="cancel" href="adminmanageraccount">Cancel</a>
                        <input class="submit" type="submit" value="Edit">
                    </div>
                </form>

            </div>

            <div>
                <jsp:include page="Footer.jsp"></jsp:include> 
            </div>
        </div>
    </body>
</html>
