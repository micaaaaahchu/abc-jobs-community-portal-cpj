<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp"%>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/admin-jobs.css" rel="stylesheet" />
</head>
<body class="bg-secondary bg-opacity-10">
	<!-- The sidebar -->
	<%@ include file="admin-sidebar.jsp"%>

	<!-- Page content -->
	<div class="content">
		<div class="content-header">
			<div class="admin-text-header pt-2">
				<h3 class="fw-semibold">Admin Management System</h3>
			</div>
		</div>

		<div class="content-jobs">
			<div class="d-flex justify-content-center">
				<div class="form-post-job">
					<div class="heading">
						<h3 class="text-center text-uppercase">Post New Job</h3>
					</div>
					<form:form action="postJob" method="post"
						modelAttribute="manageJob" id="form">
						<!-- Job Level -->
						<div class="form-group">
							<label for="job_level">Job Level</label>
							<form:select path="job_level" type="text" name="job_level"
								class="form-select">
								<option value="Senior">Senior</option>
								<option value="Junior">Junior</option>
								<option value="Intern">Intern</option>
								<option value="Entry">Entry</option>
								<option value="Mid-level">Mid-Level</option>
							</form:select>
						</div>

						<!-- Job Time -->
						<div class="form-group">
							<label for="job_time">Job Time</label>
							<form:select path="job_time" type="text" name="job_time"
								class="form-select">
								<option value="Full Time">Full Time</option>
								<option value="Part Time">Part Time</option>
								<option value="Contract">Contract</option>
							</form:select>
						</div>

						<!-- Job Name-->
						<div class="form-group">
							<label for="job_name">Job Title</label>
							<form:input path="job_name" type="text" name="job_name"
								class="form-control" placeholder="Enter job title" />
						</div>

						<!-- Job Description -->
						<div class="form-group">
							<label for="job_description">Job Description</label>
							<form:textarea path="job_description" name="job_description"
								class="form-control" placeholder="Enter job description"></form:textarea>
						</div>

						<!-- Company Name -->
						<div class="form-group">
							<label for="company_name">Company Name</label>
							<form:select path="company_name" id="company_name"
								class="form-select">
								<option value="">Select Company</option>
								<option value="Google">Google</option>
								<option value="Facebook">Facebook</option>
								<option value="Microsoft">Microsoft</option>
								<option value="AWS">AWS</option>
								<option value="Lithan">Lithan</option>
								<option value="Samsung">Samsung</option>
							</form:select>
							<input type="text" id="custom_company_name" class="form-control"
								placeholder="Company not on the list? Type here." />
						</div>


						<button type="submit" class="btn-submit btn btn-dark mt-4">Post</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>