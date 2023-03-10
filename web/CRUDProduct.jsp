<%-- 
    Document   : student
    Created on : Feb 17, 2023, 11:52:17 AM
    Author     : hatha
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Product</title>
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
        
        <style>
        .tb{
            width: 80%;
            margin: 3% auto;
            background-color:#f3f3f3;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
            transition: all 0.3s cubic-bezier(.25,.8,.25,1);
        }
        th{
            text-align: center;
            padding: 20px;
            border: 2px solid;
        }
        td{
            text-align: center;
            padding: 20px;
            border: 2px solid;
        }
        tr:hover{
            background-color: #00FA9A;
        }
        img{
            width: 55%;
            height: 55%;
            padding: 0;
        }
        .crud{
            border: 3px solid black;
            border-radius: 5px;
            font-weight: bold;
            text-decoration: none;
            padding: 5px;
        }
        .button{
            margin-left: 45%;
        }
        .header{
            margin-bottom: 3%;
        }
    </style>
    </head>
    <body>
        
        <div class="header">
            <!-- Start Top Nav -->
            <jsp:include page="TopNav.jsp"></jsp:include>
                <!-- End Top Nav -->
                <!-- Start header -->
            <jsp:include page="Header.jsp"></jsp:include>
            <!-- End header -->
        </div>
        <div>
            <div class="button">
                <a class="crud" href="home">Back</a>    
                <a class="crud" href="categoryincreatejsp"><i class="fas fa-plus"></i> New Product</a> 
            </div>
            <div class="table-crud">
                <table border = "1" class="tb">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Price</th>
                        <th>ID Category</th>              
                        <th>Quantity</th>
                        <th>Origin</th>
                        <th>Update-Delete</th>
                    </tr>             
                <c:forEach items="${listP}" var="i">
                    <tr>
                        <td>${i.id}</td>
                        <td>${i.name}</td>
                        <td><img src="${i.image}" alt="image"></td>
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
                            <a class="crud" href="loadproducttoupdate?pid=${i.id}" class="ud"><i class="fas fa-pencil-alt"></i></a>
                            <a class="crud" href="delete?pid=${i.id}" onclick="return confirm('Are you sure to delete product!');" class="ud"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            </div>
        </div>
        
        <div>
            <jsp:include page="Footer.jsp"></jsp:include>
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                    <c:forEach items="${listC}" var="i">
                        <li><a class="text-decoration-none" href="category?cid=${i.cid}">${i.cname}</a></li>
                        </c:forEach>                                              
                </ul>
            </div>
            <jsp:include page="Footer2.jsp"></jsp:include>
            <!-- End Footer -->   
        </div>
            
    </body>
</html>
