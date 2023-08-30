<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../components/header.jsp" %>
    <link href="css/register.css" rel="stylesheet" /> <!-- Apply register page CSS -->
    <!-- Include any additional CSS or resources here -->
</head>
<body>
    <div class="root">
        <%@ include file="../components/navbar.jsp" %>

        <main>
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-8 col-xl-9">
                        <div class="card card-edit my-4">
                            <div class="row g-0">
                                <div class="col-xl-6 d-none d-xl-block">
                                    <img src="images/forms/threadp-page.jpg" alt="Image" class="img-fluid"
                                         style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height: 76vh" />
                                </div>
                                <div class="col-xl-6">
                                    <div class="card-body p-md-5 text-black">
                                        <h3 class="mb-3 text-uppercase text-center">Post New Thread</h3>

                                        <form:form action="postThread" method="post" modelAttribute="thread" id="form">
                                            <!-- Title -->
                                            <div class="form-outline mb-2">
                                                <label for="title">Thread Title</label>
                                                <form:input path="title" type="text" name="title"
                                                            class="form-control" />
                                            </div>

                                            <!-- Content -->
                                            <div class="form-outline mb-2">
                                                <label for="content">Thread Content</label>
                                                <form:textarea path="content" type="text" name="content"
                                                               class="form-control"></form:textarea>
                                            </div>

                                            <!-- First Tag -->
                                            <div class="form-outline mb-2">
                                                <label for="tag1">First Tag</label>
                                                <select name="tag1" class="form-select">
                                                    <option value="" disabled="disabled">Choose First Tag</option>
                                                    <option value="">No Tag</option>
                                                    <c:forEach items="${tags}" var="tag">
                                                        <option value="${tag.getFirst_tag()}">${tag.getFirst_tag()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <!-- Second Tag -->
                                            <div class="form-outline mb-2">
                                                <label for="tag2">Second Tag</label>
                                                <select name="tag2" class="form-select">
                                                    <option value="" disabled="disabled">Choose Second Tag</option>
                                                    <option value="">No Tag</option>
                                                    <c:forEach items="${tags}" var="tag">
                                                        <option value="${tag.getSecond_tag()}">${tag.getSecond_tag()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div class="mt-5 d-flex justify-content-center">
                                                <button type="submit" class="btn btn-dark ms-1">Post</button>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <%@ include file="../components/footer.jsp" %>
    </div>
</body>
</html>
