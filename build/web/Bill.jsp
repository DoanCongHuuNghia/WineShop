<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sparkling Shop - Bill</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/>
        <%
            session = request.getSession(false);
            boolean isLoggedIn = (session != null && session.getAttribute("acc") != null);
            if (!isLoggedIn) {
                response.sendRedirect(request.getContextPath() + "/Login.jsp");
            }
        %>
        <style>
            body {
                background-color: #f6f6f6;
                font-family: Arial, sans-serif;
            }

            h1 {
                text-align: center;
                color: #333;
                margin-top: 50px;
            }

            .table {
                margin: 50px auto;
                border-collapse: collapse;
                background-color: #fff;
                box-shadow: 0 0 20px rgba(0,0,0,0.15);
                width: 100%;
                max-width: 800px;
            }

            .table thead th {
                padding: 15px;
                text-align: left;
                font-weight: bold;
                background-color: #f8f8f8;
                border-bottom: 1px solid #ccc;
            }

            .table tbody td {
                padding: 15px;
                border-bottom: 1px solid #ccc;
                text-align: left;
                font-weight: bold;
            }

            .table tbody td:first-child {
                color: #555;
            }

            .table tfoot td {
                padding: 15px;
                text-align: right;
                font-weight: bold;
                border-top: 1px solid #ccc;
            }

            .table tfoot td:first-child {
                border-top: none;
            }

            .table tfoot tr:last-child td {
                font-size: 1.5em;
                color: #333;
                border-top: 3px solid #ccc;
            }

            .table tfoot tr:last-child td:first-child {
                border-top-left-radius: 5px;
            }

            .table tfoot tr:last-child td:last-child {
                border-top-right-radius: 5px;
            }

            .thankyou {
                text-align: center;
                margin: 50px 0;
                font-size: 2em;
                color: #555;
            }
        </style>
    </head>
    <body>
        <div class="Header">
            <jsp:include page="TopNav.jsp"></jsp:include>
            <jsp:include page="Header.jsp"></jsp:include>
            </div>
        <h1>Shop Bill</h1>
        <c:forEach items="${listB}" var="i">
            
        
        <table class="table">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${i.allpname}</td>
                    <td>${i.allamount}</td>
                    <td>${i.allprice}</td>
                    <td>${i.datebuy}</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3">Tổng tiền</td>
                    <td>${i.total} VNÐ</td>
                </tr>
                <tr>
                    <td colspan="3">Phí vận chuyển</td>
                    <td>${(5 * i.total)/100} VNÐ</td>
                </tr>
                <tr>
                    <td colspan="3">VAT</td>
                    <td>${i.total/10} VNÐ</td>
                </tr>
                <tr>
                    
                    <td colspan="3">
                        <a href="removebill?bid=${i.bid}" onclick="return confirm('Are you sure to delete product!');" class="m-3"> 
                            <i class="fas fa-trash-alt"></i>
                        </a>
                        Thành Tiền</td>
                    <td>${i.total + (5*i.total)/100 + i.total/10} VNÐ</td>
                </tr>
            </tfoot>
        </table>
        </c:forEach>
        <div class="thankyou">
            Cảm ơn đã mua hàng.
        </div>
        <div class="footer">
            <jsp:include page="Footer.jsp"></jsp:include>  
        </div>
    </body>
</html>