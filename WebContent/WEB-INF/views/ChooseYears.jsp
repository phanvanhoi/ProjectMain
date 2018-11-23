<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login Page</title>
<!--Made with love by Mutiullah Samim -->

<!--Bootsrap 4 CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<!--Custom styles-->


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/chooseYear.css">
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h3 style="color: yellow; text-align: center;">Registration
						Timetable Assumes</h3>
					<!-- 	<div class="d-flex justify-content-end social_icon">
						<span><i class="fab fa-facebook-square"></i></span> <span><i
							class="fab fa-google-plus-square"></i></span> <span><i
							class="fab fa-twitter-square"></i></span>
					</div> -->
				</div>
				<div class="card-body">
					<form method="POST"
						action="${pageContext.request.contextPath}/ChooseYearsServlet">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<select id="chooseYears" name="chooseYears">
								<option value="" disabled selected>Choose Years</option>
								<option value="1516">2015-2016</option>
								<option value="1617">2016-2017</option>
								<option value="1718">2017-2018</option>
								<option  value="1819">2018-2019</option>
							</select>

							<div class="input-group-prepend" style="margin-left: 61px;">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<select class="chonHocKy" id="chooseSemester"
								name="chooseSemester">
								<option value="" disabled selected>Semester</option>
								<option value="HKI">Semester I</option>
								<option value="HKII">Semester II</option>
								<option value="HKHE">Semester Summer</option>
							</select>
						</div>
						<div class="form-group">
							<input type="submit" value="Continue"
								class="btn float-right login_btn">							
						</div>
					</form>
				</div>
				<div class="card-footer">
					<div class="d-flex justify-content-center links">
						<!-- Don't have an account?<a href="#">Sign Up</a> -->
					</div>
					<div class="d-flex justify-content-center">
						<!-- <a href="#">Forgot your password?</a> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>