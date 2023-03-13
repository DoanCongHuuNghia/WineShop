<%-- 
    Document   : Admin
    Created on : Mar 9, 2023, 3:01:13 PM
    Author     : DOANCONGHUUNGHIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>
    <link href="css/custom.css" rel="stylesheet" type="text/css"/>

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <div class="Header">
            <jsp:include page="TopNav.jsp"></jsp:include>
            <jsp:include page="Header.jsp"></jsp:include>
        </div>
        
        <div class="container py-5">
            <div class="row">

                <div class="col-lg-3 bg-success px-5">
                    <h1 class="h2 pb-4 pt-4"><a class="collapsed d-flex justify-content-between h2 text-decoration-none text-white" href="#">Admin Manager</a></h1>
                    <ul class="list-unstyled templatemo-accordion">
                        <li class="pb-3">                                             
                            <a class="collapsed d-flex justify-content-between h4 text-decoration-none text-white" href="#">Manager Account</a>
                        </li>
                        <li class="pb-3">                                             
                            <a class="collapsed d-flex justify-content-between h4 text-decoration-none text-white" href="#">Manager Product</a>
                        </li>
                        <li class="pb-3">                                             
                            <a class="collapsed d-flex justify-content-between h4 text-decoration-none text-white" href="#">Manager Category</a>
                        </li>
                        <li class="pb-3">                                             
                            <a class="collapsed d-flex justify-content-between h4 text-decoration-none text-white" href="#">Manager Cart</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-2 bg-light">               
                    <div class="row">                  
                        <img class="mb-1 mt-2" src="https://f8-zpcloud.zdn.vn/2403962463092927019/cf2223dca9f674a82de7.jpg" width="210px" height="140px" alt="admin customer"/>                 
                        <img src="https://f8-zpcloud.zdn.vn/7545087424380149442/3d4f649ae8b035ee6ca1.jpg" width="210px" height="140px" alt="admin revenue"/>
                    </div>               
                </div>

                <div class="col-lg-2 bg-light">               
                    <div class="row">                  
                        <img class="mb-1 mt-2" src="https://f9-zpcloud.zdn.vn/6867604466691921585/b8731965924f4f11165e.jpg" width="210px" height="140px" alt="admin order"/>                 
                        <img src="https://f8-zpcloud.zdn.vn/7545087424380149442/3d4f649ae8b035ee6ca1.jpg" width="210px" height="140px" alt="admin revenue"/>
                    </div>               
                </div>                                

                <div class="col-lg-5 bg-light">
                    <div class="row">                  
                        <img class="mt-2" src="https://f8-zpcloud.zdn.vn/1061293270732518711/0d3cf1927fb8a2e6fba9.jpg" width="420px" height="280px" alt="admin product"/>                   
                    </div>
                </div>

            </div>
            
            <div class="row">
                <div class="col-lg-8 bg-light">
                    <img class="mt-2 mb-2" src="https://f9-zpcloud.zdn.vn/2462425403153590271/369153b1b29b6fc5368a.jpg" width="850px" height="630px" alt="admin product"/>
                </div>
                <div class="col-lg-4 bg-light">
                    <img class="mt-2 mb-2" src="https://f8-zpcloud.zdn.vn/7896663020969872871/561d1930fb1a26447f0b.jpg" width="400px" height="630px" alt="admin product"/>
                </div>
            </div>
        </div>
    <!-- End Content -->


        <div class="footer">
            <jsp:include page="Footer.jsp"></jsp:include>  
        </div>           
    </body>
</html>