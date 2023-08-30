<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp"%>
<link href="css/register.css" rel="stylesheet" />
</head>
<body>
	<div class="root">
		<%@ include file="../components/navbar.jsp"%>

		<main>
			<section class="h-100">
				<div class="container py-5 h-100">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-lg-8 col-xl-9">
							<div class="card card-registration my-4">
								<div class="row g-0">
									<div class="col-xl-6 d-none d-xl-block">
										<img
											src="images/forms/register-page.jpg"
											alt="Image" class="img-fluid"
											style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height: 110vh" />
									</div>
									<div class="col-xl-6">
										<div class="card-body p-md-5 text-black">
											<h3 class="mb-3 text-uppercase text-center">Registration for an
												Account</h3>

											<form:form action="saveRegister" method="post" id="form"
												modelAttribute="register"
												onsubmit="return checkValidation()">


												<!-- Email -->
												<div class="form-outline mb-2">
													<label for="email">Email</label>
													<form:input path="email" type="text" style="${error}"
														name="email" placeholder="example@gmail.com"
														class="form-control" id="email" />
												</div>
												<p class="error errorEmail">Email is required</p>
												<span style="color: #b02a37; margin-top: 6px">${message}</span>

												<!-- Password -->
												<div class="form-outline mb-2">
													<label for="password">Password</label>
													<form:input path="password" type="password" name="password"
														placeholder="Password" class="form-control" id="password" />
												</div>
												<p class="error errorPassword">Password is required</p>

												<!-- First Name -->
												<div class="form-outline mb-2">
													<label for="first_name">First Name</label>
													<form:input path="profile.first_name" type="text"
														name="first_name" placeholder="Yumi" class="form-control"
														id="fname" />
												</div>
												<p class="error errorFname">First Name is required</p>

												<!-- Last Name -->
												<div class="form-outline mb-2">
													<label for="last_name">Last Name</label>
													<form:input path="profile.last_name" type="text"
														name="last_name" placeholder="Garcia" class="form-control"
														id="lname" />
												</div>
												<p class="error errorLname">Last Name is required</p>

												<!-- Country -->
												<div class="form-outline mb-2">
													<label for="country">Country</label>
													<form:input path="profile.country" type="text"
														name="country" placeholder="Philippines"
														class="form-control" id="country" />
												</div>
												<p class="error errorCountry">Country is required</p>

												<!-- City -->
												<div class="form-outline mb-2">
													<label for="city">City</label>
													<form:input path="profile.city" type="text" name="city"
														placeholder="Manila" class="form-control" id="city" />
												</div>
												<p class="error errorCity">City is required</p>

												<!-- Job -->
												<div class="form-outline mb-2">
													<label for="job">Job</label>
													<form:select path="profile.job.id_job" class="form-select"
														id="job">
														<option value="0">Unemployed</option>
														<c:forEach items="${listJob}" var="job">
															<option value="${job.id_job}">${job.company_name},
																${job.job_name}</option>
														</c:forEach>
													</form:select>
												</div>
												<div class="mt-5 d-flex justify-content-center">
												<button type="submit" class="btn btn-dark ms-1">Submit
													registration</button>
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

		<%@ include file="../components/footer.jsp"%>
	</div>

	<script src="js/validator.js"></script>
</body>
</html>
