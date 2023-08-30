<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/register-confirmation.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

	  <main>
        <section id="registration-confirmation" class="mt-5">
		  <div class="container d-flex justify-content-center">
		    <div class="confirmation d-flex flex-column text-center">
		      <i class="fa-solid fa-check text-success"></i>
		      <h2 class="fw-semibold">Confirmation Email</h2>
		      <p class="text-secondary">
		        Email confirmation successful. You can now continue your journey with ABC Jobs Portal.
		      </p>
		      <div class="wrapper">
		      	<a href="login">
		          <button class="btn btn-dark mt-3 text-uppercase" >Continue</button>
		        </a>
		      </div>
		    </div>
		  </div>
		</section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>