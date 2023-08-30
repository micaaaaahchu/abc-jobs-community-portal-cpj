<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../components/header.jsp" %>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/admin-jobs.css" rel="stylesheet" />
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

     <div class="content-jobs">
        <div class="admin-button mb-3">
          <a href="post-job" class="text-decoration-none me-3">
            <button class="btn btn-dark">Post Job</button>
          </a>
          <a href="job-applicant" class="text-decoration-none">
            <button class="btn btn-dark">Manage Applicants</button>
          </a>
        </div>
        <!-- List Job -->
        <div class="table">
          <table id="data-table" class="table-hover w-full table-auto text-center driver mt-3">
            <tr>
              <th class="text-uppercase">ID</th>
              <th class="text-uppercase">Job Name</th>
              <th class="text-uppercase">Job Level</th>
              <th class="text-uppercase">Job Time</th>
              <th class="text-uppercase">Job Description</th>
              <th class="text-uppercase">Company</th>
              <th class="text-uppercase">Action</th>
            </tr>
            <c:forEach items="${listJob}" var="job">
            <tr>
              <td>${job.getId_job()}</td>
              <td>${job.getJob_name()}</td>
              <td>${job.getJob_level()}</td>
              <td>${job.getJob_time()}</td>
              <td style="max-width: 500px;">${job.getJob_description()}</td>
              <td>${job.getCompany_name()}</td>
              <td>
                <a href="job-edit?id=${job.getId_job()}" class="text-decoration-none">
                  <button class="btn btn-dark mb-1 mt-1"><i class="fa-regular fa-pen-to-square"></i></button>
                </a>
                <a href="job-delete?id=${job.getId_job()}" class="text-decoration-none">
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