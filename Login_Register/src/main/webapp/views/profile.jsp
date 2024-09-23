<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="Login_Register.controllers.LoginController"%>

<!DOCTYPE html>
<html>
<head>
<%
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("login.jsp?error=sessionExpired");
        return;
    }
%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Cập nhật thông tin cá nhân</title>
</head>
<body>
	<header class="row">
		<div class="col">
			<div class="alert alert-primary col" align="center">
				<h1>Cập nhật thông tin cá nhân</h1>
			</div>
		</div>
	</header>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-5">
				<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/profile">
					<c:if test="${alert != null}">
						<h6 class="alert alert-danger">${alert}</h6>
					</c:if>
					<div class="form-group mb-3">
						<label for="fullname">Fullname:</label> 
						<input type="text" id="fullname" name="fullname" class="form-control" value="${user.fullname}" />
					</div>
					<div class="form-group mb-3">
						<label for="phone">Phone:</label> 
						<input type="text" id="phone" name="phone" class="form-control" value="${user.phone}" />
					</div>
					<input type="hidden" name="id" value="${user.id}" />
					<div class="form-group mb-3">
						<label for="image">Image:</label>
						<input type="file" id="images" name="images" class="form-control" />
					</div>
					<div class="form-group mt-3" align="center">
						<button type="submit" class="btn btn-primary">Cập nhật</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>