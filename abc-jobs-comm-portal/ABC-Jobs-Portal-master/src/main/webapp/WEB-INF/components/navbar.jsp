<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<header>
    <nav class="navbar navbar-expand-lg text-bg-secondary sticky-top">
        <div class="container">
            <style>
                .navbar-brand img {
                    width: 130px;
                    height: 50px;
                    transition: transform 0.3s ease-in-out;
                }

                .navbar-brand img:hover {
                    transform: scale(1.1);
                }
            </style>
            <a class="navbar-brand" href="<%= request.getContextPath() %>"><img src="images/logo/abcportal-logo.png"></a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-0 me-lg-auto fw-medium text-uppercase">
                    <li class="nav-item me-0 me-lg-3"><a class="nav-link" href="<%= request.getContextPath() %>"><i
                            class="fas fa-house-chimney fa-fade" style="--fa-animation-duration: 4s;"></i> Home</a></li>
                    <li class="nav-item me-0 me-lg-3"><a class="nav-link" href="search-user"><i
                            class="fas fa-users fa-fade" style="--fa-animation-duration: 4s;"></i> Network</a></li>
                    <li class="nav-item me-0 me-lg-3"><a class="nav-link" href="jobs"><i
                            class="fas fa-briefcase fa-fade" style="--fa-animation-duration: 4s;"></i> Jobs</a></li>
                    <li class="nav-item me-0 me-lg-3"><a class="nav-link" href="threads"><i
                            class="fas fa-comments fa-fade" style="--fa-animation-duration: 4s;"></i> Threads</a></li>

                    <c:if test="${admin != null}">
                        <li class="nav-item me-0 me-lg-3"><a href="admin-dashboard" class="nav-link"> <i
                                class="fas fa-id-card-clip"></i> Dashboard</a></li>
                    </c:if>
                </ul>
				<c:if test="${profile == null && admin == null}">
					<div class="nav-button d-flex flex-column flex-lg-row">
						<a href="login"
							class="btn btn-outline-dark me-0 me-lg-3 mb-3 mb-lg-0">Login</a>
						<a href="register" class="btn btn-dark mb-3 mb-lg-0">Register</a>
					</div>
				</c:if>

				<c:if test="${profile != null}">
					<ul class="navbar-nav fw-semibold">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle d-flex align-items-center"
							href="#" role="button" data-bs-toggle="dropdown"
							aria-expanded="false">
								<div class="nav-account me-2">
									<img src="${profile.picture}" alt="User Account" />
								</div> ${profile.first_name} ${profile.last_name}
						</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="user-profile"><i
										class="fa-solid fa-user-tie" style="--fa-animation-duration: 4s;"></i> Profile</a></li>
								<li><a class="dropdown-item" href="my-job"><i
										class="fas fa-briefcase" style="--fa-animation-duration: 4s;"></i> Job</a></li>
								<li><a class="dropdown-item" href="my-thread"><i
										class="fas fa-comments" style="--fa-animation-duration: 4s;"></i> Thread</a></li>
								<li class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="logout">
										<button class="nav-logout btn btn-danger">Logout</button>
								</a></li>
							</ul></li>
					</ul>
				</c:if>

				<c:if test="${admin != null}">
					<div class="nav-button d-flex flex-column flex-lg-row">
						<a href="adminLogout"
							class="btn btn-danger me-0 me-lg-3 mb-3 mb-lg-0">Logout</a>
					</div>
				</c:if>

			</div>
		</div>
	</nav>
</header>