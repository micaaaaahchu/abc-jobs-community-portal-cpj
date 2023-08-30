<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../components/header.jsp" %>
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <div class="root">
        <%@ include file="../../components/navbar.jsp" %>

        <main>
            <section class="h-100">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-9">
                            <div class="card card-login my-4">
                                <div class="row g-0">
                                    <div class="col-xl-6 d-none d-xl-block">
                                        <img src="images/forms/login-page.jpg" alt="Login Image" class="img-fluid" style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height: 43vh;" />
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card-body p-md-5 text-black">
                                            <h3 class="mb-3 text-uppercase text-center">Administrator Login</h3>

                                            <form:form action="adminLogin" method="post" modelAttribute="adminLogin" class="mt-4 d-flex flex-column" id="form">
                                                <div class="form-group">
                                                    <form:input path="email" id="loginEmail" class="form-control mb-3" style="${error}" type="text" placeholder="Email" />
                                                </div>
                                                <div class="form-group">
                                                    <form:input path="password" id="loginPassword" class="form-control" style="${error}" type="password" placeholder="Password" />
                                                </div>
                                                <span style="color: #b02a37; margin-top: 6px">${message}</span>

                                                <div class="mt-2 d-flex justify-content-center">
                                                    <button class="btn btn-dark" type="submit">Login</button>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <%@ include file="../../components/footer.jsp" %>
    </div>
</body>
</html>
