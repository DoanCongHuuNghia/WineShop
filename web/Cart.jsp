<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sparkling Shop - Cart</title>
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
            .container-fluid{
                margin: 2% auto;
            }
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="Header">
            <jsp:include page="TopNav.jsp"></jsp:include>
            <jsp:include page="Header.jsp"></jsp:include>
            </div>
            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">Shopping Cart</h4>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box mt-2 mb-3">
                            <a href="bill" class="btn btn-danger">
                                Your Bill </a>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="table-responsive">

                                            <table class="table table-borderless table-centered mb-0">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Price</th>
                                                        <th>Quantity</th>
                                                        <th>Total</th>
                                                        <th style="width: 50px;"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${listCP}" var="i">                                                   
                                                    <tr>
                                                        <td>
                                                            <img src="${i.pimage}" alt="contact-img" title="contact-img" class="rounded me-3" height="64">
                                                            <p class="m-0 d-inline-block align-middle font-16">
                                                                <a href="detail?pid=${i.pid}&&cid=${i.cateid}" class="text-body">${i.pname}</a>
                                                            </p>
                                                        </td>
                                                        <td>
                                                            ${i.price} VND
                                                        </td>
                                                        <td>

                                                <li class="list-inline-item">                                              
                                                    <a class="btn btn-success text-white" href="updateamountcart?pid=${i.pid}&&amount=${i.amount - 1}&&cartid=${i.cartid}">-</a>                                                   
                                                </li>
                                                <li class="list-inline-item">
                                                    <input type="hidden"id="product-quanity" name="amount" value=""/>
                                                    <span class="badge bg-secondary" id="var-value">${i.amount}</span>

                                                </li>
                                                <li class="list-inline-item">                          
                                                    <a class="btn btn-success text-white" href="updateamountcart?pid=${i.pid}&&amount=${i.amount + 1}">+</a>                                         
                                                </li>

                                                </td>
                                                <td>
                                                    ${i.price*i.amount} VND
                                                </td>
                                                <td>
                                                    <a href="removefromcart?cartid=${i.cartid}" onclick="return confirm('Are you sure to delete product!');" class="action-icon"> <i class="fas fa-trash-alt"></i></a>
                                                </td>
                                                </tr>

                                            </c:forEach>
                                            </tbody>
                                        </table>


                                    </div> <!-- end table-responsive-->

                                    <!-- action buttons-->
                                    <div class="row mt-4">
                                        <div class="col-sm-6">
                                            <a href="shop" class="btn text-muted d-none d-sm-inline-block btn-link fw-semibold">
                                                <i class="mdi mdi-arrow-left"></i> Continue Shopping </a>
                                        </div> <!-- end col -->
                                        <div class="col-sm-6">
                                            <div class="text-sm-end">
                                                <a href="loadinfocustomer" class="btn btn-danger">
                                                    Checkout </a>
                                            </div>
                                        </div> <!-- end col -->
                                    </div> <!-- end row-->
                                </div>
                                <!-- end col -->

                                <div class="col-lg-4">
                                    <div class="border p-3 mt-4 mt-lg-0 rounded">
                                        <h4 class="header-title mb-3">Thanh Toán</h4>

                                        <div class="table-responsive">
                                            <table class="table mb-0">
                                                <tbody>
                                                    <tr>
                                                        <td>Tổng tiền :</td>
                                                        <td>${total} VNÐ</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Giảm giá :</td>
                                                        <td>${sale} VNÐ</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Phí vận chuyển :</td>
                                                        <td>${ship} VNÐ</td>
                                                    </tr>
                                                    <tr>
                                                        <td>VAT: </td>
                                                        <td>${VAT} VNÐ</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Thành Tiền :</th>
                                                        <th>${sum} VNÐ</th>                                                     
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="input-group mt-3">
                                        <input type="text" class="form-control form-control-light" placeholder="Coupon code" aria-label="Recipient's username">
                                        <button class="input-group-text btn-light" type="button">Apply</button>
                                    </div>

                                </div> <!-- end col -->

                            </div> <!-- end row -->
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <div class="footer">
            <jsp:include page="Footer.jsp"></jsp:include>  
        </div>

        <!-- Start Script -->
        <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="js/templatemo.js" type="text/javascript"></script>

        <!-- End Script -->
        <!-- Start Script -->
        <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="js/templatemo.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <!-- End Script -->


    </body>
</html>
