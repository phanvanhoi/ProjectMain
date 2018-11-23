<%@taglib prefix="ex" tagdir="/WEB-INF/tags/"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Registration Assumes</title>
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
				<li role="presentation"><a
					href="${pageContext.request.contextPath}/CourseRegistration">Course
						registration</a></li>
				<li role="presentation" class="active"><a
					href="${pageContext.request.contextPath}/StudyProgram">Study
						Program</a></li>
			</ul>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-xs-10">
				<table class="table table-striped">
					<thead class="thead-dark" style="background-color: gray;">
						<tr>
							<th scope="col">Code Subject</th>
							<th scope="col">Name Subject</th>
							<th scope="col">Credits</th>
							<th scope="col">Number Of Hours</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${SubjectList}" var="subject">
							<tr>
								<td>${subject.getSubjectID()}</td>
								<td>${subject.getNameSubject()}</td>
								<td>${subject.getCredits()}</td>
								<td>${subject.getNumberOfHours()}</td>
								<td>unfinished</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				

				<table class="table table-striped">
					<thead class="thead-dark" style="background-color: gray;">
						<tr>
							<th scope="col">Code Subject</th>
							<th scope="col">Name Subject</th>
							<th scope="col">Credits</th>
							<th scope="col">Score</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${SubjectListFinish}" var="subject1">
							<tr>
								<td>${subject1.getClassID()}</td>
								<td>${subject1.getNameSubject()}</td>
								<td>${subject1.getCredits()}</td>
								<td>${subject1.getScore()}</td>
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

