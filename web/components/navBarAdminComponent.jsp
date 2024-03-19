<%-- 
    Document   : navBarComponent
    Created on : Feb 17, 2022, 9:00:41 PM
    Author     : Le Hong Quan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<script>
    function login() {
        window.location.href = "login.jsp";
    }
    function logout() {
        window.location.href = "logout";
    }
</script>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <c:if test="${sessionScope.role_admin != null}">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="managerAccount">Manager Account</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="managerCategory">Manager Category</a>
                    </li>

                </c:if>
                <c:if test="${sessionScope.role_admin != null}">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="manager">Manager Product</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#!">Hello ${sessionScope.acc.user}</a>
                    </li>
                </c:if>


            </ul>
            <c:choose>
                <c:when test="${sessionScope.acc == null}">
                    <button class="btn btn-outline-primary ms-lg-2" onclick="login()">Login</button>
                </c:when>

                <c:otherwise>
                    <button class="btn btn-outline-primary ms-lg-2" onclick="logout()">Logout</button>
                </c:otherwise>
            </c:choose>




        </div>
    </div>
</nav>
