<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/admin-dashboard.css" rel="stylesheet" />
</head>
<body class="bg-secondary bg-opacity-10">
    <!-- The sidebar -->
    <%@ include file="admin-sidebar.jsp" %>

    <!-- Page content -->
    <div class="content">
      <div class="content-header">
        <div class="admin-text-header pt-2">
          <h3 class="fw-semibold">Admin Management System</h3>
        </div>
      </div>

      <div class="content-table">
        <div class="admin-button mb-3">
          <a href="admin-add" class="text-decoration-none">
            <button class="btn btn-dark">Add Data</button>
          </a>
          <a href="send-bulk-email" class="text-decoration-none">
            <button class="btn btn-dark">Send Bulk Email</button>
          </a>
        </div>

        <div class="table">
          <table id="data-table" class="table-hover w-full table-auto text-center driver mt-3">
            <tr>
              <th class="text-uppercase">ID</th>
              <th class="text-uppercase">First Name</th>
              <th class="text-uppercase">Last Name</th>
              <th class="text-uppercase">Email</th>
              <th class="text-uppercase">Country</th>
              <th class="text-uppercase">City</th>
              <th class="text-uppercase">Company</th>
              <th class="text-uppercase">Job</th>
              <th class="text-uppercase">Actions</th>
            </tr>
            <c:forEach items="${listUser}" var="user">
            <tr>
              <td>${user.getUser().getId_user()}</td>
              <td>${user.first_name}</td>
              <td>${user.last_name}</td>
              <td>${user.getUser().getEmail()}</td>
              <td>${user.country}</td>
              <td>${user.city}</td>
              <td>${user.getJob().getCompany_name()}</td>
              <td>${user.getJob().getJob_name()}</td>
              <td>
                <a href="admin-edit?id=${user.id_profile}" class="text-decoration-none">
                  <button class="btn btn-dark mb-1 mt-1"><i class="fa-regular fa-pen-to-square"></i></button>
                </a>
                <a href="admin-delete?id=${user.getUser().getId_user()}" class="text-decoration-none">
                  <button class="btn btn-danger mb-1 mt-1"><i class="fa-solid fa-trash"></i></button>
                </a>
              </td>
            </tr>
            </c:forEach>
          </table>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>