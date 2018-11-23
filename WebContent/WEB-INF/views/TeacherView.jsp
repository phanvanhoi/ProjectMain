<%@taglib prefix="ex" tagdir="/WEB-INF/tags/"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>View Teacher</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/TimeTableAssumes.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<ex:ex title="Study Program">
		<div class="menu">

			<ul class="nav nav-tabs">
				<li role="presentation"><a
					href="${pageContext.request.contextPath}/TimeTableAssumes">Timetable
						Assumes</a></li>
				<li role="presentation" class="active"><a
					href="${pageContext.request.contextPath}/CourseRegistration">Course
						registration</a></li>
				<li role="presentation"><a
					href="${pageContext.request.contextPath}/StudyProgram">Study
						Program</a></li>
			</ul>
		</div>
		<div class="container">
			<div class="row">
				<div
					style="min-height: 245px; width: 81%; margin-left: 1%; background-color: gray;"
					class="thumbnail">
					<div class="col-xs-4">
						<img src="${pageContext.request.contextPath}/images/GV04.jpg" alt="..." class="img-thumbnail">
					</div>
					<div class="col-xs-6" style="margin-top: 6%;">
						Name Teacher: ${Teacher.nameTeacher} <br>
						Email : ${Teacher.email}<br> 
						Address: ${Teacher.address}<br> 
						Advantages:${Teacher.advantages}<br> 
						Education Level: ${Teacher.educationLevel}
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-10">
					<table class="table table-striped">
						<thead class="thead-dark" style="background-color: gray;">
							<tr>
								<th scope="col">Code Class</th>
								<th scope="col">Name Subject</th>
								<th scope="col">Credits</th>
								<th scope="col">Name Teacher</th>
								<th scope="col">Dates</th>
								<th scope="col">Time</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${Class}" var="Class">
								<tr>
									<td>${Class.getClassID()}</td>
									<td>${Class.getNameSubject()}</td>
									<td>${Class.getCredits()}</td>
									<td>${Class.getNameTeacher()}</td>
									<td>${Class.getDates()}</td>
									<td>${Class.getStartTime()}</td>
									<td>Registration</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</ex:ex>
</body>
</html>

