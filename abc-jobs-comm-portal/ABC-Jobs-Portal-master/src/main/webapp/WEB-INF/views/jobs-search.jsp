<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp"%>
<link href="css/jobs.css" rel="stylesheet" />
</head>
<body>
	<div class="root">
		<%@ include file="../components/navbar.jsp"%>

		<main class="pb-5">
			<div id="jobs" class="container d-flex flex-column flex-md-row">
				<!-- Sidebar -->
				<%@ include file="../components/job-sidebar.jsp"%>

				<!-- Content -->
				<div class="content">
					<!-- Search jobs -->
					<div class="search-bar">
						<form action="jobs-search" method="get" class="d-flex">
							<input type="text" name="keyword" placeholder="Search jobs" />
							<button type="submit"
								class="btn btn-outline-secondary btn-search">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</form>
					</div>
					<!-- Job List -->
					<c:forEach items="${searchJob}" var="job">
						<div class="job-container mt-3">
							<div class="d-flex justify-content-between">
								<div
									class="wrapper d-flex flex-column flex-md-row align-items-center me-3">
									<div class="wrapper d-flex">
										<div class="logo me-3">
											<img src="${job.getCompany_image()}"
												alt="${job.getCompany_name()}" />
										</div>
										<div class="detail">
											<h5 class="fw-semibold fs-6">${job.getJob_name()}</h5>
											<h5 class="text-secondary fs-6">${job.getCompany_name()}</h5>
										</div>
									</div>
									<div class="d-flex ms-0 ms-md-3 mb-3">
										<a href="jobs-search?keyword=${job.getJob_level()}"
											class="text-decoration-none">
											<button class="btn btn-outline-secondary me-3">${job.getJob_level()}</button>
										</a> <a href="jobs-search?keyword=${job.getJob_time()}"
											class="text-decoration-none">
											<button class="btn btn-outline-secondary">${job.getJob_time()}</button>
										</a>
									</div>
								</div>

								<c:if test="${user.getJob() == null}">
									<div class="wrapper mb-3">
										<a href="applyJob?id_job=${job.getId_job()}"
											class="text-decoration-none">
											<button class="btn btn-dark">Apply Job</button>
										</a>
									</div>
								</c:if>

							</div>

							<div class="Job-description mt-4">
								<p>${job.getJob_description()}</p>
							</div>
						</div>
					</c:forEach>

					<c:if test="${searchJob == null || searchJob.isEmpty()}">
						<div class="mt-4 text-center">
							<h4 class="text-secondary">Jobs not found.</h4>
						</div>
					</c:if>
				</div>
			</div>
		</main>

		<footer>
			<section id="footer" class="mt-5 bg-secondary">
				<div class="container">
					<div class="footer-content d-flex flex-column flex-md-row">
						<div class="footer-brand me-5 pe-lg-5 mb-2">
							<style>
.footer-logo img {
	width: 130px;
	height: 50px;
	transition: transform 0.3s ease-in-out;
}

.footer-logo img:hover {
	transform: scale(1.1);
}
</style>
							<a class="footer-logo" href="<%=request.getContextPath()%>"><img
								src="images/logo/abcportal-logo.png"></a>

						</div>
						<div class="footer-links d-flex justify-content-between flex-wrap">
							<ul class="links text-center">
								<span class="fw-semibold text-dark">GENERAL</span>
								<li>Sign up</li>
								<li>Help center</li>
								<li>About</li>
								<li>Developers</li>
								<li>Careers</li>
							</ul>
							<ul class="links text-center">
								<span class="fw-semibold text-dark">DIRECTORIES</span>
								<li>Jobs</li>
								<li>Articles</li>
								<li>Companies</li>
								<li>Topics</li>
								<li>Featured Jobs</li>
							</ul>
							<ul class="links text-center">
								<span class="fw-semibold text-dark">OUR SOCIALS</span>
								<li>Twitter</li>
								<li>Facebook</li>
								<li>Instagram</li>
								<li>Youtube</li>
							</ul>
							<ul class="links text-center">
								<span class="fw-semibold text-dark">LEGAL</span>
								<li>Privacy policy</li>
								<li>Terms of service</li>
							</ul>
						</div>
					</div>
					<p class="mt-2 text-center fw-bold">Copyright � ABC Jobs Pte.
						Ltd. 2023. All Rights Reserved.</p>
				</div>
			</section>
		</footer>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>