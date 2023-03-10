<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>
                <i class="fa fa-envelope mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:nghiadchde160153@fpt.edu.vn">nghiadchde160153@fpt.edu.vn</a>
                <i class="fa fa-phone mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="tel:0774-769-541">0774-769-541</a>
            </div>
            <div>   
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                <a class="navbar-sm-brand text-light text-decoration-none mx-3 fw-bold" href="#">Manager Account</a>
                </c:if>
                <c:if test="${sessionScope.acc.isSeller == 1}">
                <a class="navbar-sm-brand text-light text-decoration-none fw-bold" href="manager">Manager Product</a>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                <a class="navbar-sm-brand text-light text-decoration-none mx-3 fw-bold" href="#">Hello ${sessionScope.acc.name}</a>
                </c:if>
            </div>
            <div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                    <c:if test="${sessionScope.acc != null}">
                    <a class="navbar-sm-brand text-light text-decoration-none mx-3" href="logout"><i class="fas fa-user-check"></i> Logout</a>     
                    </c:if>
                    <c:if test="${sessionScope.acc == null}">
                    <a class="navbar-sm-brand text-light text-decoration-none mx-3" href="Login.jsp"><i class="fas fa-user"></i> Login</a>
                    </c:if> 
                </div>
            </div>          
        </div>
        
    </div>
</nav>
