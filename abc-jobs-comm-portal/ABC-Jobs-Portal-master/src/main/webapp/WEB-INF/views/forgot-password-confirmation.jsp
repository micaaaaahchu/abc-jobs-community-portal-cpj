<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/forgot-password-confirmation.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <section id="forgot-password-confirmation" class="mt-5">
          <div class="container d-flex justify-content-center">
            <div class="forgot-password d-flex flex-column text-center">
              <i class="fa-solid fa-check text-success"></i>
              <h2 class="fw-semibold">Forgot Password Confirmation</h2>
              <p class="text-secondary"> A temporary password was sent to your email. You can login using your temporary password and you can update your forgotten password afterwards.</p>
              <div class="wrapper">
                <a class="btn btn-dark mt-3" href="<%= request.getContextPath() %>">Back To Home</a>
              </div>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>