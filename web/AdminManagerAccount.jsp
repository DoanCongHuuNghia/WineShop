<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sparkling Shop - Admin Manager Account</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/templatemo.css" rel="stylesheet" type="text/css"/>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/vendor/dataTables.bootstrap5.css" rel="stylesheet" type="text/css">
        <link href="assets/css/vendor/responsive.bootstrap5.css" rel="stylesheet" type="text/css">
        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link href="css/fontawesome.min.css" rel="stylesheet" type="text/css"/>      
        <%
            session = request.getSession(false);
            Account a = (Account) session.getAttribute("acc");
            boolean isLoggedIn = (session != null && session.getAttribute("acc") != null && a.getIsAdmin() == 1);
            if (!isLoggedIn) {
                response.sendRedirect(request.getContextPath() + "/Login.jsp");
            }
        %>
        </head>
        <body>


            <!-- Start Top Nav -->
            <jsp:include page="TopNav.jsp"></jsp:include>
                <!-- End Top Nav -->
                <!-- Start header -->
            <jsp:include page="Header.jsp"></jsp:include>
                <!-- End header -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row mb-2">
                                    <div class="col-sm-4">
                                        <a class="text-decoration-none bg-success p-2 text-white" href="Admin.jsp">Back</a> 
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="text-sm-end">
                                            <a class="text-decoration-none bg-success p-2 text-white" href="adminmanageraccount">All</a> 
                                            <a class="text-decoration-none bg-success p-2 text-white" href="adminmanagersellercus?isSeller=1">Seller</a> 
                                              <a class="text-decoration-none bg-success p-2 text-white" href="adminmanagersellercus?isCustomer=1">Customer</a> 
                                      
                                    </div>
                                </div><!-- end col-->
                            </div>

                            <div class="table-responsive">
                                <table class="table table-centered table-borderless table-hover w-100 dt-responsive nowrap">
                                    <thead class="table-light">
                                        <tr>
                                            <th>Name</th>
                                            <th>Account Name</th>
                                            <th>Address</th>
                                            <th>Phone Number</th>
                                            <th>Age</th>
                                            <th style="width: 75px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listA}" var="i">
                                            <tr>
                                                <td class="table-user">
                                                    <a href="#" class="text-body fw-semibold text-decoration-none">${i.name}</a>
                                                </td>
                                                <td>
                                                    ${i.username}
                                                </td>
                                                <td>
                                                    <span class="fw-semibold"> ${i.address}</span>
                                                </td>
                                                <td>
                                                    ${i.phonenumber}
                                                </td>
                                                <td>
                                                    ${i.age}
                                                </td>
                                                <td>
                                                    <a href="loadaccounttoupdate?accId=${i.id}&&isAdmin=${i.isAdmin}" class="action-icon"> <i class="mdi mdi-square-edit-outline"></i></a>
                                                    <a href="admindeleteaccount?accId=${i.id}&&isAdmin=${i.isAdmin}" class="action-icon" onclick="return confirm('Are you sure to delete account!');"> <i class="mdi mdi-delete"></i></a>
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
            </div>
            <!-- end row -->

            <!-- container -->



            <div class="footer">
                <jsp:include page="Footer.jsp"></jsp:include>
            </div>
            <!-- Start Script -->
            <script src="assets/js/vendor.min.js"></script>
            <script src="assets/js/app.min.js"></script>

            <!-- third party js -->
            <script src="assets/js/vendor/jquery.dataTables.min.js"></script>
            <script src="assets/js/vendor/dataTables.bootstrap5.js"></script>
            <script src="assets/js/vendor/dataTables.responsive.min.js"></script>
            <script src="assets/js/vendor/responsive.bootstrap5.min.js"></script>
            <script src="assets/js/vendor/apexcharts.min.js"></script>
            <script src="assets/js/vendor/dataTables.checkboxes.min.js"></script>
            <!-- third party js ends -->

            <!-- demo app -->
            <script src="assets/js/pages/demo.sellers.js"></script>
            <!-- End Script -->
        </body>
    </html>
