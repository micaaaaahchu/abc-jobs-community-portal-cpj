<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/send-bulk-email.css" rel="stylesheet" />
<link>
</head>
<body>
	<!-- The sidebar -->
    <%@ include file="admin-sidebar.jsp" %>

    <!-- Page content -->
    <div class="content">
      <div class="content-header">
        <div class="admin-text-header pt-2">
          <h3 class="fw-semibold">Admin Management System</h3>
        </div>
      </div>

      <div class="content-edit">
        <form:form action="sendBulkEmail" method="post" modelAttribute="bulkEmail" id="form">
          <div class="row justify-content-center">
            <div class="col-xxl-5 col-xl-6 col-lg-8 col-md-12">
            
              <div class="d-flex flex-column regis-wrapper">
                <div class="heading">
                  <h3 class="text-center text-uppercase">Send Bulk Email</h3>
                </div>

                <!-- hidden -->
                <div class="form-group">
                  <form:hidden path="id_bulk_email" class="form-control" />
                </div>

                <!-- Subject -->
                <div class="form-group">
                  <label for="subject">Subject</label>
                  <form:input path="subject" type="text"  class="form-control" />
                </div>

                <!-- Body -->
                <div class="form-group">
                  <label for="content">Content</label>
                  <form:textarea path="content" class="form-control" />
                </div>

                <button type="submit" class="btn btn-dark mt-4">Send Email</button>
              </div>
            
            
           	<!-- Users -->
            <div class="table mt-4">
	          <table class="w-full table-auto text-center driver mt-3">
		          <tr>
		            <th class="text-uppercase">ID</th>
		            <th class="text-uppercase">Name</th>
		            <th class="text-uppercase">Email</th>
		            <th class="text-uppercase">Select</th>
		          </tr>
		          <c:forEach items="${listUser}" var="user">
		          <tr>
		            <td>${user.getUser().getId_user()}</td>
		            <td>${user.first_name} ${user.last_name}</td>
		            <td>${user.getUser().getEmail()}</td>
		            <th>
		              <form:checkbox class="text-center" path="usersId" value="${user.getUser().getId_user()}" />
		            </th>
		          </tr>
		          </c:forEach>
	            </table>
            </div>
            </div>
          </div>
        </form:form>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>