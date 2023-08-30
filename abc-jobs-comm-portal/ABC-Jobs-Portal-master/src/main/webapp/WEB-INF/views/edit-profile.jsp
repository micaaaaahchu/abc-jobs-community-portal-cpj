<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../components/header.jsp" %>
    <link href="css/edit-profile.css" rel="stylesheet" />
    <!-- Include any additional CSS or resources here -->
</head>
<body>
    <div class="root">
        <%@ include file="../components/navbar.jsp" %>

        <main>
            <section class="h-100">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-8 col-xl-9">
                            <div class="card card-edit my-4">
                                <div class="row g-0">
                                    <div class="col-xl-6 d-none d-xl-block">
                                        <img src="images/forms/editp-page.jpg" alt="Image" class="img-fluid"
                                             style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height: 88vh" />
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card-body p-md-5 text-black">
                                            <h3 class="mb-3 text-uppercase text-center">Update Your Profile</h3>

                                            <form:form action="save-edit" method="post" id="form"
                                                       modelAttribute="profile" onsubmit="return checkValidation()">

                                                <!-- Profile ID -->
                                                <div class="form-outline mb-2">
                                                    <form:hidden path="id_profile" class="form-control" />
                                                </div>

                                                <!-- First Name -->
                                                <div class="form-outline mb-2">
                                                    <label for="first_name">First Name</label>
                                                    <form:input path="first_name" type="text" name="first_name"
                                                                class="form-control" id="fname" />
                                                    <p class="error errorFname">First Name is required</p>
                                                </div>

                                                <!-- Last Name -->
                                                <div class="form-outline mb-2">
                                                    <label for="last_name">Last Name</label>
                                                    <form:input path="last_name" type="text" name="last_name"
                                                                class="form-control" id="lname" />
                                                    <p class="error errorLname">Last Name is required</p>
                                                </div>

                                                <!-- Country -->
                                                <div class="form-outline mb-2">
                                                    <label for="country">Country</label>
                                                    <form:input path="country" type="text" name="country"
                                                                class="form-control" id="country" />
                                                    <p class="error errorCountry">Country is required</p>
                                                </div>

                                                <!-- City -->
                                                <div class="form-outline mb-2">
                                                    <label for="city">City</label>
                                                    <form:input path="city" type="text" name="city"
                                                                class="form-control" id="city" />
                                                    <p class="error errorCity">City is required</p>
                                                </div>

                                                <!-- About -->
                                                <div class="form-outline mb-2">
                                                    <label for="about">About</label>
                                                    <form:textarea path="about" type="text" name="about"
                                                                   class="form-control" id="about"></form:textarea>
                                                </div>

                                                <div class="mt-5 d-flex justify-content-center">
                                                    <button type="submit" class="btn btn-dark ms-1">Save Changes</button>
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

        <%@ include file="../components/footer.jsp" %>
    </div>

    <script src="js/validator.js"></script>
</body>
</html>
