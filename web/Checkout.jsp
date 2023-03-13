<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            <div class="row py-5">
                <form class="col-md-9 m-auto" method="post" role="form">
                    <div class="row">
                        <div class="form-group col-md-6 mb-3">
                            <label for="inputname">Name</label>
                            <input type="text" class="form-control mt-1" id="name" name="name" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6 mb-3">
                            <label for="inputemail">Phone Number</label>
                            <input type="number" class="form-control mt-1" id="phonenumber" name="phonenumber" placeholder="Phone Number">
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="inputsubject">Address</label>
                        <input type="text" class="form-control mt-1" id="address" name="address" placeholder="Address">
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
