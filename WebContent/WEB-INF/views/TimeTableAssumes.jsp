<%@taglib prefix="ex" tagdir="/WEB-INF/tags/"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
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
	<ex:ex title="Timetable Assumes">
		<div class="menu">

			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a
					href="${pageContext.request.contextPath}/TimeTableAssumes">Timetable
						Assumes</a></li>
				<li role="presentation"><a href="${pageContext.request.contextPath}/CourseRegistration">Course registration</a></li>
				<li role="presentation"><a
					href="${pageContext.request.contextPath}/StudyProgram">Study
						Program</a></li>
			</ul>
		</div>
		<div class="lichDangKy">
			<table class="table" cellpadding="0" cellspacing="0" border="0"
				style="width: 100%;">
				<thead thead-light>
					<tr>
						<th>
							<div class="col-sm-8 thongBao">
								<label style="color: red"> Recommend at here ! </label>
							</div>
							<div class="col-sm-4 chonLich">
								<select class="chonHocKy" style="font-size: 14px">
									<option>TimeTableAssumes 1</option>
									<option>TimeTableAssumes 2</option>
									<option>TimeTableAssumes 3</option>
								</select>
							</div>

						</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td>
							<table cellpadding="0" cellspacing="0" border="0"
								style="width: 100%;">
								<tr class="keBorder">
									<td class="rsSpacerCell">
										<div></div>
									</td>
									<td class="rsHorizontalHeaderWrapper">
										<div class="rsInnerFix" style="overflow: hidden;">
											<table class="rsHorizontalHeaderTable" cellpadding="0"
												cellspacing="0" border="0"
												style="height: 100%; width: 100%;">
												<tr>
													<th style="text-align: center;"><a class="rsDateHeader" href="#">T2</a></th>
													<th style="text-align: center;"><a class="rsDateHeader" href="#">T3</a></th>
													<th style="text-align: center;"><a class="rsDateHeader" href="#">T4</a></th>
													<th style="text-align: center;"><a class="rsDateHeader" href="#">T5</a></th>
													<th style="text-align: center;"><a class="rsDateHeader" href="#">T6</a></th>
													<th style="text-align: center;"><a class="rsDateHeader" href="#">T7</a></th>
													<th style="text-align: center;"><a class="rsDateHeader" href="#">CN</a></th>
												</tr>
											</table>
										</div>
									</td>
								</tr>

								<tr class="keBorder" style="background-color: #f1f1f1;">
									<th class="rsAllDayHeader">
										<div>All day</div>
									</th>
									<td class="rsHorizontalHeaderWrapper">
										<table class="rsAllDayTable" cellpadding="0" cellspacing="0"
											border="0" style="width: 100%; height: 100%;">
											<tr class="rsAllDayRow" style="height: 15px;">
												<td class="CurrentDate">
													<div class="rsWrap rsLastSpacingWrapper"
														style="height: 100%;">
														<!-- -->
													</div>
												</td>
												<td>
													<div class="rsWrap rsLastSpacingWrapper"
														style="height: 100%;">
														<!-- -->
													</div>
												</td>
												<td>
													<div class="rsWrap rsLastSpacingWrapper"
														style="height: 100%;">
														<!-- -->
													</div>
												</td>
												<td>
													<div class="rsWrap rsLastSpacingWrapper"
														style="height: 100%;">
														<!-- -->
													</div>
												</td>
												<td>
													<div class="rsWrap rsLastSpacingWrapper"
														style="height: 100%;">
														<!-- -->
													</div>
												</td>
												<td>
													<div class="rsWrap rsLastSpacingWrapper"
														style="height: 100%;">
														<!-- -->
													</div>
												</td>
												<td class="rsLastCell">
													<div class="rsWrap rsLastSpacingWrapper"
														style="height: 100%;">
														<!-- -->
													</div>
												</td>
											</tr>
										</table>
									</td>
								</tr>

								<tr>
									<td class="rsVerticalHeaderWrapper"
										style="background-color: #f1f1f1; border-left: 1px solid; border-right: 1px solid">
										<table class="rsVerticalHeaderTable" cellpadding="0"
											cellspacing="0" border="0" width="100%">
											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														7 <span class="rsAmPm">SA</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 7h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														8 <span class="rsAmPm">SA</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 8h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														9 <span class="rsAmPm">SA</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 9h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														10 <span class="rsAmPm">SA</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 10h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														11 <span class="rsAmPm">SA</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 11h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														12 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 12h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														1 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 1h chieu-->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														2 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 2h chiều-->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														3 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 3h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														4 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 4h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														5 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 5h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														6 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 6h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														7 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 7h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														8 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 8h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														9 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr class="rsAlt" style="height: 15px;">
												<th>
													<div class="rsAlt">&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 9h -->

											<tr style="height: 15px;">
												<th>
													<div class="dinhDangGio">
														10 <span class="rsAmPm">CH</span>
													</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<tr style="height: 15px;">
												<th>
													<div>&nbsp;</div>
												</th>
											</tr>
											<!-- Hết 10h -->
										</table>
									</td>

									<td>
										<div class="ThDetail" style="width: 100%; height: 1311px">
											<table style="width: 100%; height: 100%">
												<tbody>
													<tr>
														<td id="thu2"></td>
														<td id="thu3"></td>
														<td id="thu4"></td>
														<td id="thu5"></td>
														<td id="thu6"></td>
														<td id="thu7"></td>
														<td id="cn"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<button type="button" class="btn btn-secondary"
								style="position: relative; left: 49%;">New</button>
							<button type="button" class="btn btn-secondary"
								style="position: relative; left: 50%;">Registration</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</ex:ex>
</body>
</html>

