<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/>
        <title>Sparkling Shop - Information</title>
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
            <div>
                <form action="updateinfocus">
                    <div class="text-center text-success fw-bold fs-2 mt-5">
                        CUSTOMER INFORMATION
                    </div>
                    <div class="bg-light w-50 m-auto">
                        <div class="p-3">
                            <div class="">
                                <h5>ID</h5>
                                <input name="accid" value="${account.id}" type="text" class="form-control mb-2" placeholder="Full name" required autofocus="" readonly>
                        </div>
                        <div class="">
                            <h5>Full Name</h5>
                            <input name="fullname" value="${account.name}" type="text" class="form-control mb-2" placeholder="Full name" required autofocus="">
                        </div>
                        <div class="">
                            <h5>Address</h5>
                            <input name="address" value="${account.address}" type="text" class="form-control mb-2" placeholder="Address" required autofocus="">
                        </div>
                        <div class="">
                            <h5>Phone Number</h5>
                            <input name="phonenumber" value="${account.phonenumber}" type="tel" class="form-control mb-2" placeholder="Phonenumber" pattern="[0]{1}[3|5|7|8|9]{1}[0-9]{8}" required autofocus="">
                        </div>
                        <div class="">
                            <h5>Age</h5>
                            <input name="age" value="${account.age}" type="number" class="form-control mb-2" placeholder="Age" min="18" max="100" required autofocus="">
                        </div>
                        <div class="">
                            <h5>Username</h5>
                            <input name="username" value="${account.username}" type="text" class="form-control mb-2" placeholder="Full name" required autofocus="" readonly>
                        </div>
                        <div class="">
                            <h5>Password</h5>
                            <input name="password" value="${decodedpass}" type="text" class="form-control mb-2" placeholder="Full name" required autofocus="">
                        </div>
                        <div class="div">
                            <label class="label">Seller</label>
                            <select class="data" name="seller">
                                <option ${account.isSeller == 1 ? "selected" : "disabled"} value="1" >Yes</option> 
                                <option ${account.isSeller == 0 ? "selected" : "disabled"} value="0">No</option> 
                            </select> 
                        </div>
                        <div class="div">
                            <label class="label">Admin</label>
                            <select class="data" name="admin" >
                                <option ${account.isAdmin == 1 ? "selected" : "disabled"}  value="1">Yes</option> 
                                <option ${account.isAdmin == 0 ? "selected" : "disabled"}  value="0">No</option> 
                            </select> 
                        </div>

                    </div>
                    <div class="d-flex justify-content-between p-3">
                        <a class="text-dark " href="home" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
                        <button class="btn btn-primary btn-block text-decoration-none justify-content-between">Change Your Information</button>
                    </div>
                </div>


            </form>
            <br>
        </div>
        <div class="footer">
            <jsp:include page="Footer.jsp"></jsp:include>  
        </div>   
    </body>
</html>
