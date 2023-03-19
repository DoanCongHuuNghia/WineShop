<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sparkling Shop - Manager Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/> 
        <%
            session = request.getSession(false);
            Account a = (Account) session.getAttribute("acc");
            boolean isLoggedIn = (session != null && session.getAttribute("acc") != null && a.getIsSeller() == 1);
            if (!isLoggedIn) {
                response.sendRedirect(request.getContextPath() + "/Login.jsp");
            }
        %>
        <style>
            .crudproduct{
                width: 90%;
                margin: 2% auto;
            }
            .button {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .button a {
                display: inline-block;
                padding: 10px;
                background-color: #2ECC71;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                transition: background-color 0.3s;
            }

            .button a:hover {
                background-color: #27AE60;
            }

            .crud {
                display: flex;
                align-items: center;
                margin-right: 10px;
                font-size: 14px;
            }

            .crud i {
                margin-right: 5px;
            }

            /* Style for the table */
            .table-crud {
                margin-bottom: 20px;
            }

            .tb {
                width: 100%;
                border-collapse: collapse;
            }

            .tb th, .tb td {
                padding: 10px;
                text-align: center;
            }

            .tb th {
                background-color: #2ECC71;
                color: white;
            }

            .tb tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .tb tr:hover {
                background-color: #e2e2e2;
            }

            .tb td img {
                width: 20%;
                height: 20%;
                object-fit: cover;
                border-radius: 50%;
            }
        </style>
    </head>
    <body>


        <!-- Start Top Nav -->
        <jsp:include page="TopNav.jsp"></jsp:include>
            <!-- End Top Nav -->
            <!-- Start header -->
        <jsp:include page="Header.jsp"></jsp:include>
            <!-- End header -->
            <div class="crudproduct">
                <div class="button">
                    <a class="crud" href="home">Back</a>    
                    <a class="crud" href="categoryincreatejsp"><i class="fas fa-plus"></i> New Product</a> 
                </div>
                <div class="table-crud">
                    <table class="tb">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Category</th>              
                            <th>Quantity</th>
                            <th>Origin</th>
                            <th>Action</th>
                        </tr>             
                    <c:forEach items="${listP}" var="i">
                        <tr>
                            <td>${i.id}</td>
                            <td>${i.name}</td>
                            <td><img src="${i.image}" alt="image" width="25%" height="25%"></td>
                            <td>${i.price}</td>
                            <td>
                            <c:if test="${i.cateid == 1}">RUM</c:if>
                            <c:if test="${i.cateid == 2}">VODKA</c:if>
                            <c:if test="${i.cateid == 3}">COGNAC</c:if>
                            <c:if test="${i.cateid == 4}">TEQUILA</c:if>
                            </td>
                                <td>${i.quantity}</td>
                            <td>${i.orgin}</td>
                            <td>
                                <a class="" href="loadproduct?pid=${i.id}" class="ud"><i class="fas fa-pencil-alt"></i></a>
                                <a class="" href="delete?pid=${i.id}" onclick="return confirm('Are you sure to delete product!');" class="ud"><i class="fas fa-trash-alt"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>

        <div class="footer">
            <jsp:include page="Footer.jsp"></jsp:include>
        </div>
        <!-- Start Script -->
        <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="js/templatemo.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <!-- End Script -->
    </body>
</html>
