<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sparkling Shop - Checkout</title>
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
    </head>
    <body>
        <div class="Header">
            <jsp:include page="TopNav.jsp"></jsp:include>
            <jsp:include page="Header.jsp"></jsp:include>
        </div>
        
        <div class="container py-5">
            <div class="row py-5">
                <form class="col-md-9 m-auto" method="post" action="removeallcart">
                    <div class="row">
                        <h1 class="text-center">${check}</h1>
                    </div>
                    <div class="row">
                        <h1 class="text-success text-center" >${message}</h1>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6 mb-3">
                            <label for="inputname">Tên</label>
                            <input type="text" class="form-control mt-1" id="name" name="name" value="${account.name}">
                        </div>
                        <div class="form-group col-md-6 mb-3">
                            <label for="inputemail">Số điện thoại</label>
                            <input type="number" class="form-control mt-1" id="phonenumber" name="phonenumber" value="${account.phonenumber}">
                        </div>
                    </div>
                        
                    <div class="row">
                        <div class="form-group col-md-6 mb-3">
                            <label for="inputsubject">Địa chỉ</label>
                            <input type="text" class="form-control mt-1" id="address" name="address" value="${account.address}">
                        </div> 
                        <div class="form-group col-md-6 mb-3">
                            <label for="inputsubject">Tổng tiền cân thanh toán</label>
                            <input type="text" class="form-control mt-1" id="address" name="address" value="${sum} VNÐ" readonly>
                        </div> 
                    </div>    
                                     
                    <div class="row">
                        <div class="col text-end mt-2">
                            <button type="submit" class="btn btn-success btn-lg px-3">Buy</button>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
        
        <div class="footer">
            <jsp:include page="Footer.jsp"></jsp:include>  
        </div>  
    </body>
</html>
