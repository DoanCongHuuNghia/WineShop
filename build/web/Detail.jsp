<%-- 
    Document   : shop-single
    Created on : Feb 23, 2023, 4:59:35 PM
    Author     : DOANCONGHUUNGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sparkling Shop - Product Detail</title>
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

    <!-- Slick -->
    <link href="css/slick.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/slick-theme.css" rel="stylesheet" type="text/css"/>
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
    <!-- Start Top Nav -->
    <jsp:include page="TopNav.jsp"></jsp:include>
    <!-- End Top Nav -->
    <!-- Start header -->
    <jsp:include page="Header.jsp"></jsp:include>
    <!-- End header -->

    <!-- Open Content -->
    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    
                    <div class="card mb-3">
                    <c:if test="${sessionScope.acc.id == detail.sellid}">
                        <p class="text-danger text-center m-0">ĐÂY LÀ SẢN PHẨM CỦA BẠN.</p>
                    </c:if>
                        <img class="card-img img-fluid" src="${detail.image}" alt="Card image cap" id="product-detail">
                    </div>
                </div>
                <!-- col end -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        
                        <div class="card-body">
                            
                            <h1 class="h2">${detail.name}</h1>
                            
                            
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6 class="h3 py-2">Price:</h6>
                                </li>
                                <li class="list-inline-item">
                                    <p class="h3 py-2">${detail.price} VND</p>
                                </li>
                            </ul>
                            <p class="py-2">
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-secondary"></i>
<!--                                <span class="list-inline-item text-dark">Rating 4.8 | 36 Comments</span>-->
                            </p>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6>Brand:</h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>Sparkling Shop</p>
                                </li>
                            </ul>

                            <h6>Description:</h6>
                            <p>${detail.description}</p>

                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6>Quantity available: </h6>
                                </li>
                                <li class="list-inline-item">
                                    <p>${detail.quantity}</p>
                                </li>
                            </ul>

                            <form action="addtocart?pid=${detail.id}" method="post">
                                <input type="hidden" name="product-title" value="Activewear">
                                <div class="row">
                                    <div class="col-auto">
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <h6>Orgin: </h6>
                                            </li>
                                            <li class="list-inline-item">
                                                <p>${detail.orgin}</p>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item text-right">
                                                Quantity
<!--                                                <input type="number"id="product-quanity" name="amount" value=""/>-->
                                            </li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                            <li class="list-inline-item w-25">
                                                <input class="w-100" type="number" id="product-quanity" name="amount" value="1" max="${detail.quantity}"/>
                                                <span class="badge bg-secondary d-none" id="var-value"></span>
                                            </li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" name="submit" >Buy</button>
                                    </div>
<!--                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" name="submit" >Add To Cart</button>
                                    </div>-->
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content -->

    <!-- Start Article -->
    <section class="py-5">
        <div class="container">
            <div class="row text-left p-2 pb-3">
                <h4>Related Products</h4>
            </div>

            <!--Start Carousel Wrapper-->
            <div id="carousel-related-product">
                <c:forEach items="${listP}" var="i">
                        <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <c:if test="${sessionScope.acc.id == i.sellid}">
                                <p class="text-danger text-center m-0">ĐÂY LÀ SẢN PHẨM CỦA BẠN.</p>
                            </c:if>
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="${i.image}">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                    <ul class="list-unstyled">
                                        <li><a class="btn btn-success text-white" href="Shop-single.jsp"><i class="far fa-heart"></i></a></li>
                                        <li><a class="btn btn-success text-white mt-2" href="detail?pid=${i.id}&&cid=${i.cateid}"><i class="far fa-eye"></i></a></li>
                                        <li><a class="btn btn-success text-white mt-2" href="Shop-single.jsp"><i class="fas fa-cart-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body">
                                <a href="detail?pid=${i.id}&&cid=${i.cateid}" class="h3 text-decoration-none">${i.name}</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li class="pt-2">
                                        <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                    </li>
                                </ul>
                                <ul class="list-unstyled d-flex justify-content-center mb-1">
                                    <li>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i> 
                                        <!--danh gia san pham-->
                                    </li>
                                </ul>
                                <p class="text-center mb-0">${i.price} VND</p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
            </div>
            
        </div>
    </section>
    <!-- End Article -->


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
    <script src="js/slick.min.js" type="text/javascript"></script>
    <!-- Start Slider Script -->
    
    <script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
    <!-- End Slider Script -->

</body>

</html>