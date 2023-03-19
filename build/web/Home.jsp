<%-- 
    Document   : Home
    Created on : Feb 23, 2023, 4:55:23 PM
    Author     : DOANCONGHUUNGHIA
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sparkling Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>
    <link href="css/custom.css" rel="stylesheet" type="text/css"/>

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/>

</head>

<body>
    <!-- Start Top Nav -->
    <jsp:include page="TopNav.jsp"></jsp:include>
    <!-- End Top Nav -->
    <!-- Start header -->
    <jsp:include page="Header.jsp"></jsp:include>
    <!-- End header -->

    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="img/background-remover/image1.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>SPARKLING </b>SHOP</h1>
                                <h3 class="h2">Group 5 - PRJ301 - SE17A06</h3>
                                <p>
                                    Một trong những cửa hàng rượu trực tuyến hàng đầu Việt Nam, được thành lập dựa trên lý tưởng mang đến những loại rượu mạnh nhất với giá tốt nhất.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="img/background-remover/image2.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">PRIDE OF SPARKLING SHOP</h1>
                                <h3 class="h2">Cửa hàng rượu trực tuyến tốt nhất Việt Nam</h3>
                                <p>
                                    Sparkling giao rượu yêu thích của bạn trực tiếp đến cửa nhà bạn. Với nhiều lựa chọn các loại rượu mạnh phổ biến và các loại rượu quý hiếm khó tìm, chúng tôi là cửa hàng duy nhất đáp ứng mọi nhu cầu về rượu của bạn. Cho dù bạn đang tìm kiếm rượu whisky, rượu tequila, rượu cognac, rượu mùi, rượu rum, rượu vodka hay bất kỳ loại rượu mạnh nào khác, chúng tôi đều cung cấp cho bạn.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="img/background-remover/image3.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">WHAT WE BRING TO CUSTOMERS?</h1>
                                <h3 class="h2">Đơn đặt hàng công ty & số lượng lớn</h3>
                                <p>
                                    Nếu bạn quan tâm đến việc tìm hiểu thêm về cách chúng tôi có thể giúp đáp ứng nhu cầu của công ty hoặc đơn đặt hàng lớn của bạn, chúng tôi rất vui được trò chuyện với bạn. Nhóm của chúng tôi tận tâm tạo ra các gói tùy chỉnh phù hợp với yêu cầu cụ thể của bạn, chắc chắn sẽ làm hài lòng người nhận của bạn
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Categories</h1>
                <p>
                    SPARKLING SHOP của chúng tôi chuyên bán các loại rượu nổi tiếng với giá thành phải chăng. Và đây là những loại loại rượu mà chúng tôi có.
                </p>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${listC}" var="i"> 
            <div class="col-12 col-md-3 p-5 mt-3">
                <a href="#"><img src="${i.cimage}" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">${i.cname}</h5>
                <p class="text-center"><a class="btn btn-success" href="category?cid=${i.cid}">Go Shop</a></p>
            </div>
            </c:forEach>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Latest Product</h1>
                    <p>
                        Các loại rượu mới nhất.
                    </p>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${listLP}" var="i"> 
                <div class="col-12 col-md-4 mb-4">                
                    <div class="card h-100">
                        <a href="detail?pid=${i.id}&&cid=${i.cateid}">
                            <img src="${i.image}" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">${i.price} VND</li>
                            </ul>
                            <a href="detail?pid=${i.id}&&cid=${i.cateid}" class="h2 text-decoration-none text-dark">${i.name}</a>
                            <p class="card-text">
                                ${i.description}
                            </p>
                            <p class="text-muted">Số lượng: ${i.quantity}</p>
                            <c:if test="${sessionScope.acc.id == i.sellid}">
                                <p class="text-danger text-center">Đây là sản phẩm của bạn.</p>
                            </c:if>
                        </div>
                    </div>
                </div>    
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->


    <!-- Start Footer -->
    <jsp:include page="Footer.jsp"></jsp:include>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="js/templatemo.js" type="text/javascript"></script>
    <script src="js/custom.js" type="text/javascript"></script>
    <!-- End Script -->
</body>

</html>
