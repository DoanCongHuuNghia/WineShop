<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head> 
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!--        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>-->
        <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>


        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            /* Style for the table */
            .title{

            }
            table {
                width: 100%;
            }
            th {
                background-color: #f2f2f2;
            }
            tbody tr:hover {
                background-color: #f5f5f5;
            }
            td input[type="number"] {
                width: 60px;
                text-align: center;
            }
            td:nth-child(4) {
                font-weight: bold;
            }
            /* Style for the cart summary */
            .cart-summary {
                border: 1px solid #ccc;
                padding: 10px;
                margin-top: 20px;
            }
            .cart-summary h3 {
                margin-top: 0;
            }
            .cart-summary table {
                margin-bottom: 0;
            }
            .cart-summary button {
                margin-top: 10px;
            }
        </style>
    </head>

    <body>

        <jsp:include page="TopNav.jsp"></jsp:include>
        <jsp:include page="Header.jsp"></jsp:include>

        <div class="container">

            <h2 class="font-weight-normal pt-5">Shopping Cart</h2>
            <div class="row">
                <div class="col-md-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Subtotal</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="media">
                                        <img src="img/Vodka/Absolut Kurant Vodka.png" class="col-3 p-md-6 mr-3" alt="Product image">
                                        <div class="media-body">
                                            <h5 class="mt-0">Product 1</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                        </div>
                                    </div>
                                </td>
                                <td id="price">$10.00</td>
                                <td><input class="quantity-input" type="number" min="1" value="1"></td>
                                <td class="total" >$10.00</td>
                                <td class="td-boder"><a href="#"><i class="fas fa-trash-alt"></i></a></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="media" >
                                        <img  src="img/rum/Bacardi Carta Blanca Superior White Rum.jpg" class="col-3 p-md-6 mr-3" alt="Product image" >
                                        <div class="media-body">
                                            <h5 class="mt-0">Product 2</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                        </div>
                                    </div>
                                </td>
                                <td>$20.00</td>
                                <td><input class="quantity-input" type="number" min="1" value="1"></td>
                                <td>$20.00</td>
                                <td class="td-boder"><a href="#"><i class="fas fa-trash-alt"></i></a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-4">
                    <div class="cart-summary">
                        <h3>Cart Summary</h3>
                        <table class="table">
                            <tbody>

                            <td colspan="3">Total</td>
                            <td id="total">$0</td>
                            </tr>
                            <tr>
                                <td colspan="3">Discount</td>
                                <td id="discount">0%</td>
                            </tr>
                            <tr>
                                <td colspan="3">Discounted Total</td>
                                <td id="discounted-total">$0</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/script.js" type="text/javascript"></script>
    </body>
</html>