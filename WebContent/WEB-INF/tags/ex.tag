<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@tag pageEncoding="UTF-8" language="java"%>
<%@attribute name="title" description="tiêu đề" required="true"%>
	<div id="container">
		<div id="header"></div>
		<div id="content">
			<div class="hoTen">
				<label id="NameUser"> <span class="glyphicon glyphicon-user"
					aria-hidden="true"></span>${Student.getNameStudent()}
				</label>
				<button id="chooseYear" type="button" class="btn btn-secondary">
					<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
					Choose Year And Semester

				</button>
			</div>
			<jsp:doBody />
		</div>

		<div id="footer"></div>
	</div>
	<script type="text/javascript">
		/* $(".menu ul li").on("click", function() {
 			if($(this).text() == "Timetable Assumes"){
 				$(this).addClass("active");
 				$(this).siblings("li").removeClass("active");
				 window.location="${pageContext.request.contextPath}/TimeTableAssumes";
			}else if($(this).text() == "Course registration"){
				 window.location="${pageContext.request.contextPath}/home"; 
			}
			else{
				$(this).addClass("active");
				$(this).siblings("li").removeClass("active");
				window.location="${pageContext.request.contextPath}/StudyProgram";	 
			}
				
				 
		});  */
		$("#chooseYear").on("click", function(){
			 window.location="${pageContext.request.contextPath}/ChooseYearsServlet";
		});
	</script>

