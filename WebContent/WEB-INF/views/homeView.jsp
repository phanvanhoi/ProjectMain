<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Home Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/HomePage.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

</head>
<body>
	<div id="container">
		<div id="header"></div>
		<div id="sidebar">
			<div id="content">
				<div id="content_Left">

					<div class="User">
						<span class="input-group-text"><i class="fas fa-user"></i>${Student.getNameStudent()}</span>
					</div>

					<div class="accordion2" id="area-leftmenu">
						<p class='item' class='he'>Thông tin Cá nhân</p>
						<ul>
							<li><a href='#'> <span>Thông tin Cá nhân</span>
							</a></li>
							<li><a href='#'> <span>Mật khẩu</span>
							</a></li>
							<li><a href='#'> <span>Tìm kiếm Người</span>
							</a></li>
						</ul>

						<p class='item'>Tin tức & Thông báo</p>
						<ul>
							<li><a href='#'> <span>Tin tức & Sự kiện</span>&nbsp; <span
									class='notreadnum'></span>
							</a></li>
							<li><a href='#'> <span>Thông báo</span>&nbsp; <span
									class='notreadnum'></span>
							</a></li>
						</ul>

						<p class='item active'>Lịch</p>
						<ul>
							<li><a href='#'> <span>Lịch cá nhân</span>
							</a></li>
							<li><a href='#'> <span>Lịch dạy</span>
							</a></li>
							<li><a href='#'> <span>Lịch học</span>
							</a></li>
						</ul>

						<p class='item'>Học tập</p>
						<ul>
							<li><a href='#'> <span>Đăng ký Môn học</span>
							</a></li>
							<li><a
								href='${pageContext.request.contextPath}/ChooseYearsServlet'>
									<span>Đăng ký Lịch giả định</span>
							</a></li>
							<li><a href='#'><span>Bảng điểm</span> </a></li>
							<li><a href='#'> <span>Chương Trình học</span>
							</a></li>
							<li><a href='#'><span>Đề cương Môn học</span> </a></li>
						</ul>

						<p class='item'>Học phí</p>
						<ul>
							<li><a href='#'> <span>Dự trù Học phí</span>
							</a></li>
							<li><a href='#'> <span>Hóa đơn Học phí</span>
							</a></li>
							<li><a href='#'> <span>Lịch sử Thanh toán</span>
							</a></li>
							<li><a href='#'> <span>Quy định Học phí</span>
							</a></li>
						</ul>

						<p class='item'>Cố vấn Học tập</p>
						<ul>
							<li><a href='#'><span>Giảng viên Cố vấn</span></a></li>
							<li><a href='#'> <span>Cảnh báo Học tập</span>
							</a></li>
						</ul>

						<p class='item'>Đánh giá</p>

						<ul>
							<li><a href='#'> <span>Đánh giá Giảng viên</span>
							</a></li>
							<li><a href='#'> <span>Phiếu khảo sát Sinh viên
										năm cuối</span>
							</a></li>
						</ul>
					</div>
				</div>
				<div id="content_Right">
					<table cellpadding="0" cellspacing="0" border="0"
						style="width: 100%;">
						<tr class="keBorder">
							<td class="rsSpacerCell">
								<div></div>
							</td>
							<td class="rsHorizontalHeaderWrapper">
								<div class="rsInnerFix" style="overflow: hidden;">
									<table class="rsHorizontalHeaderTable" cellpadding="0"
										cellspacing="0" border="0" style="height: 100%; width: 100%;">
										<tr>
											<th><a class="rsDateHeader" href="#">T2, 22</a></th>
											<th><a class="rsDateHeader" href="#">T3, 23</a></th>
											<th><a class="rsDateHeader" href="#">T4, 24</a></th>
											<th><a class="rsDateHeader" href="#">T5, 25</a></th>
											<th><a class="rsDateHeader" href="#">T6, 26</a></th>
											<th><a class="rsDateHeader" href="#">T7, 27</a></th>
											<th><a class="rsDateHeader" href="#">CN, 28</a></th>
										</tr>
									</table>
								</div>
								</div>
							</td>
						</tr>

						<tr class="keBorder" style="background-color: #f1f1f1;">
							<th class="rsAllDayHeader">
								<div>Cả ngày</div>
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
									<tr class="rsAlt" style="height: 15px;">
										<th>
											<div class="rsAlt">&nbsp;</div>
										</th>
									</tr>
									<!-- Hết 10h -->
								</table>
							</td>

							<td>
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
							</td>
						</tr>

					</table>
				</div>
			</div>
		</div>
		<div id="footer"></div>
	</div>

	<script type="text/javascript">
		$(document).ready(function () {
			$(".accordion2 p").click(function () {
				$(this).next("ul").slideToggle("normal")
				.siblings("ul:visible").slideUp("normal");
				$(this).toggleClass("active");
				$(this).siblings("p").removeClass("active");
				$(this).next("ul").find('a').each(function (i, val) {
					console.log(this.text + " - " + $(this).outerHeight());
					if ($(this).outerHeight() > 41) {
						$(this).attr("style", "line-height:18px;padding-top:3px;padding-bottom:3px;");
					}
				});
			});
			$('.accordion2 ul li a').each(function (i, val) {
				if ($(this).outerHeight() > 41) {
					$(this).attr("style", "line-height:18px;padding-top:3px;padding-bottom:3px;");
				}
			});
		});
	</script>
</body>
</html>