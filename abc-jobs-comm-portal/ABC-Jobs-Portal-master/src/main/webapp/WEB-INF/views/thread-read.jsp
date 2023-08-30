<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp"%>
<link href="css/threads.css" rel="stylesheet" />
</head>
<body>
	<div class="root">
		<%@ include file="../components/navbar.jsp"%>

		<main>
			<div class="mt-4 container d-flex flex-column flex-md-row">
				<!-- Include the Sidebar -->
				<%@ include file="../components/thread-sidebar.jsp"%>

				<!-- Content -->
				<div class="content-read-thread">
					<!-- Use Breadcrumb -->
					<nav style="-bs-breadcrumb-divider: '&gt;'" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="list-thread.html"
								class="text-decoration-none">Threads</a></li>
							<li class="breadcrumb-item active" aria-current="page">Read
								thread</li>
						</ol>
					</nav>

					<!-- Read Thread -->

					<div class="read-thread mb-3 mt-3">
						<a
							href="view-profile?name=${thread.getProfile().getFirst_name()}&amp;id=${thread.getProfile().getId_profile()}"
							class="user d-flex text-decoration-none text-dark"> <img
							src="${thread.getProfile().getPicture()}" alt="User Profile" />
							<p>${thread.getProfile().getFirst_name()}
								${thread.getProfile().getLast_name()}</p>
						</a>

						<div class="header mt-4">
							<h3 class="fw-semibold">${thread.getTitle()}</h3>
						</div>

						<div class="tags">
							<a
								href="thread-search?keyword=${thread.getTags().getFirst_tag()}"
								class="text-decoration-none">
								<button class="btn btn-outline-secondary mt-2">${thread.getTags().getFirst_tag()}</button>
							</a>
							<c:if test="${thread.getTags().getSecond_tag() != ''}">
								<a
									href="thread-search?keyword=${thread.getTags().getSecond_tag()}"
									class="text-decoration-none">
									<button class="btn btn-outline-secondary mt-2">${thread.getTags().getSecond_tag()}</button>
								</a>
							</c:if>
						</div>

						<div class="thread-content mt-3 centered-buttons">
							<p>${thread.getContent()}</p>
							<button class="btn btn-primary btn-sm">
								<i class="fas fa-thumbs-up"></i> Like
							</button>
							<button class="btn btn-secondary btn-sm share-button">
								<i class="fas fa-share"></i> Share
							</button>
						</div>
					</div>

					<!-- Comments -->
					<div class="comments">
						<div class="heading">
							<h5>Comments</h5>
						</div>

						<c:forEach items="${listComment}" var="comment">
							<div class="comment mb-3 linkedin-comment">
								<div class="comment-header">
									<a
										href="view-profile?id=${comment.getProfile().getId_profile()}"
										class="user d-flex text-decoration-none text-dark"> <img
										src="${comment.getProfile().getPicture()}" alt="User Profile" />
										<p>${comment.getProfile().getFirst_name()}
											${comment.getProfile().getLast_name()}</p>
									</a> <span class="comment-time">${comment.getTimestamp()}</span>
								</div>
								<p class="comment-text">${comment.getComment()}</p>
								<div class="comment-actions">
									<button class="btn btn-light btn-sm">
										<i class="fas fa-thumbs-up"></i> Like
									</button>
									<button class="btn btn-light btn-sm reply-button"
										data-comment-id="${comment.getComment()}">
										<i class="fas fa-reply"></i> Reply
									</button>
								</div>
								<div class="reply-form" style="display: none;">
									<form action="postReply" method="post">
										<input type="hidden" name="commentId"
											value="${comment.getComment()}">
										<div class="form-floating">
											<textarea name="reply" class="form-control" cols="" rows=""></textarea>
											<label>Reply</label>
										</div>
										<button type="submit" class="btn btn-outline-dark mt-3">
											Post Reply</button>
									</form>
								</div>
							</div>
						</c:forEach>

						<c:if test="${listComment.isEmpty()}">
							<div class="no-comment">
								<p class="text-secondary text-center">Be the first one to
									comment on this thread</p>
							</div>
						</c:if>


						<!-- Write comment -->
						<form:form action="postComment" method="post"
							modelAttribute="threadComment"
							onsubmit="return checkValidation()">

							<input type="hidden" name="id" value="${thread.id_thread}">

							<div class="form-floating">
								<form:textarea path="comment" class="form-control" id="comment" />
								<label for="floatingTextarea">Add a Comment</label>
							</div>
							<p class="error">You cannot post a blank comment</p>

							<button type="submit" class="btn btn-outline-dark mt-3">Submit
								Comment</button>
						</form:form>
					</div>
				</div>
			</div>
		</main>

		<%@ include file="../components/footer.jsp"%>
		<script type="text/javascript" src="js/comment.js"></script>
	</div>
</body>
</html>
