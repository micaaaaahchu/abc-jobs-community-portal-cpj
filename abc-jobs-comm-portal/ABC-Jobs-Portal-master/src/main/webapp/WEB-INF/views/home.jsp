<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp"%>
<link href="css/home.css" rel="stylesheet" />
</head>
<body>
	<div class="root">
		<%@ include file="../components/navbar.jsp"%>

		<main>
			<!-- Hero Banner -->
			<section id="hero-banner"
				style="background-image: url('images/hero/hero-illustration.jpg'); background-size: cover;">
				<div
					class="overlay d-flex align-items-center justify-content-center"
					style="min-height: 70vh;">
					<div class="hero-content text-center text-light">
						<div class="heading">
							<h1 class="text-center">Your Pathway to Success:</h1>
							<h2 class="text-center">
								Explore and Secure Your Dream<br>Job with <em>ABC Jobs
									Portal</em>
							</h2>
						</div>
						<p class="sub-heading text-center">Unlock countless
							opportunities and take the next step towards a fulfilling career.</p>
						<div class="button">
							<a href="jobs" class="btn btn-primary mb-3 mb-lg-0 fw-semibold">Explore
								Jobs</a>
						</div>
					</div>
				</div>
			</section>


			<!-- Partners Logo -->
			<section id="partners"
				class="d-flex flex-column justify-content-center mb-6"
				style="height: 70vh;">
				<h2 class="fw-bold text-center">Our Trusted Partners</h2>
				<br>
				<div
					class="container-fluid d-flex flex-wrap justify-content-center p-3">
					<div class="partner d-flex align-items-center me-3 p-2">
						<img src="images/Partners/aws.png" alt="Partner" />
					</div>
					<div class="partner d-flex align-items-center me-3 p-2">
						<img src="images/Partners/facebook.png" alt="Partner" />
					</div>
					<div class="partner d-flex align-items-center me-3 p-2">
						<img src="images/Partners/google.png" alt="Partner" />
					</div>
					<div class="partner d-flex align-items-center me-3 p-2">
						<img src="images/Partners/lithan.png" alt="Partner" />
					</div>
					<div class="partner d-flex align-items-center me-3 p-2">
						<img src="images/Partners/microsoft.png" alt="Partner" />
					</div>
					<div class="partner d-flex align-items-center me-3 p-2">
						<img src="images/Partners/samsung.png" alt="Partner" />
					</div>
				</div>
			</section>

			<section id="snap"
				class="d-flex flex-column justify-content-center mb-20">
				<div class="container my-4 snap-container text-white">
					<hr style="border: 2px solid black; border-radius: 2px;">
					<div class="d-flex align-items-center gap-4 my-5 snap-child">
						<div
							class="align-self-stretch position-relative border border-warning">
							<span class="position-absolute bg-white py-2"
								style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
								<i class='bx bx-lock-alt fs-4'></i>
							</span>
						</div>
						<div>
							<p class="fs-3 fw-bolder">Keep it private</p>
							<h2 class="fs-1 fw-bold">Create private chats that only you
								know</h2>
						</div>
						<img src="images/chat.svg" width="260px" class="ms-auto">
					</div>
					<br> <br>
					<div class="d-flex align-items-center gap-4 my-5 snap-child">
						<div
							class="align-self-stretch position-relative border border-primary">
							<span class="position-absolute bg-white py-2"
								style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
								<i class='bx bx-git-repo-forked fs-4'></i>
							</span>
						</div>
						<div>
							<p class="fs-3 fw-bolder">Connect</p>
							<h2 class="fs-1 fw-bold">Where connection is easy</h2>
						</div>
						<img src="images/connect.svg" width="260px" class="ms-auto">
					</div>
					<br> <br>
					<div class="d-flex align-items-center gap-4 my-5 snap-child">
						<div
							class="align-self-stretch position-relative border border-success">
							<span class="position-absolute bg-white py-2"
								style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
								<i class='bx bx-group fs-4'></i>
							</span>
						</div>
						<div>
							<p class="fs-3 fw-bolder">Reputation</p>
							<h2 class="fs-1 fw-bold">From unknown to known</h2>
						</div>
						<img src="images/famous.svg" width="260px" class="ms-auto">
					</div>
				</div>
				<br>
			</section>

			<!-- Topics -->
			<section id="topics"
				class="d-flex flex-column justify-content-center mb-10"
				style="height: 50vh;">
				<div class="container">
					<div class="heading mt-10">
						<h2 class="fw-bold text-center">Topics you may find
							interesting</h2>
					</div>
					<div class="d-flex flex-wrap mt-3 justify-content-center">
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Bootcamp</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Internship</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Software Engineer</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Part Time Jobs</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>UI/UX Design</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Freelancing</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>OOPs</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Project Management</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Agile</span>
						</div>
						<div class="topic-tag me-3 mb-3">
							<i class="fas fa-search"></i> <span>Web Development</span>
						</div>
					</div>
				</div>
			</section>

			<!-- Featured Job -->
			<section id="featured-jobs"
				class="mt-10 d-flex flex-column justify-content-center mb-10"
				style="height: 60vh;">
				<div class="container">
					<div class="heading">
						<h2 class="fw-bold text-center">Recent Job Openings</h2>
						<br>
					</div>
					<div class="d-flex flex-wrap justify-content-center mt-3">
						<!-- Google -->
						<div class="job-container me-3 mb-3">
							<div class="d-flex">
								<div class="wrapper d-flex align-items-center me-3">
									<div class="logo me-3">
										<img src="images/logo/google.png" alt="Google" />
									</div>
									<div class="detail">
										<h5 class="fw-semibold fs-6">Quality Assurance Engineer</h5>
										<h5 class="text-secondary fs-6">Google PH</h5>
									</div>
								</div>
								<div class="wrapper d-flex align-items-center mb-3">
									<a href="jobs" class="text-decoration-none">
										<button class="btn btn-outline-dark">Apply</button>
									</a>
								</div>
							</div>
							<div class="d-flex mt-4">
								<button class="btn btn-outline-secondary me-3">Apprenticeship</button>
								<button class="btn btn-outline-secondary">Remote</button>
							</div>
						</div>
						<!-- Microsoft -->
						<div class="job-container me-3 mb-3">
							<div class="d-flex">
								<div class="wrapper d-flex align-items-center me-3">
									<div class="logo me-3">
										<img src="images/logo/microsoft.png" alt="Microsoft" />
									</div>
									<div class="detail">
										<h5 class="fw-semibold fs-6">Data Analyst</h5>
										<h5 class="text-secondary fs-6">Microsoft</h5>
									</div>
								</div>
								<div class="wrapper d-flex align-items-center mb-3">
									<a href="jobs" class="text-decoration-none">
										<button class="btn btn-outline-dark">Apply</button>
									</a>
								</div>
							</div>
							<div class="d-flex mt-4">
								<button class="btn btn-outline-secondary me-3">Full
									Time</button>
								<button class="btn btn-outline-secondary">Senior
									Analyst</button>
							</div>
						</div>
						<!-- Facebook -->
						<div class="job-container me-3 mb-3">
							<div class="d-flex">
								<div class="wrapper d-flex align-items-center me-3">
									<div class="logo me-3">
										<img src="images/logo/facebook.png" alt="Facebook" />
									</div>
									<div class="detail">
										<h5 class="fw-semibold fs-6">QA Tester</h5>
										<h5 class="text-secondary fs-6">Facebook</h5>
									</div>
								</div>
								<div class="wrapper d-flex align-items-center mb-3">
									<a href="jobs" class="text-decoration-none">
										<button class="btn btn-outline-dark">Apply</button>
									</a>
								</div>
							</div>
							<div class="d-flex mt-4">
								<button class="btn btn-outline-secondary me-3">Intern</button>
								<button class="btn btn-outline-secondary">Full Time</button>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>

		<%@ include file="../components/footer.jsp"%>
	</div>
</body>
</html>