package hoi.com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hoi.beans.ClassCourse;
import com.hoi.beans.Student;
import com.hoi.beans.Subject;
import com.hoi.utils.DBUtils;
import com.hoi.utils.MyUtils;

/**
 * Servlet implementation class StudyProgramServlet
 */
@WebServlet("/StudyProgram")
public class StudyProgramServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudyProgramServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection conn = MyUtils.getStoredConnection(request);

		String errorString = null;
		List<Subject> list = null;
		try {
			list = DBUtils.querySubject_Time(conn);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		
		List<ClassCourse> list1 = null ;
		try {
			list1 = DBUtils.querySubjectFinish(conn);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("SubjectList", list);
		request.setAttribute("SubjectListFinish", list1);
		HttpSession session = request.getSession();

		// Kiểm tra người dùng đã đăng nhập (login) chưa.
		Student loginedUser = MyUtils.getLoginedUser(session);

		// Nếu chưa đăng nhập (login).
		if (loginedUser == null) {
			// Redirect (Chuyển hướng) tới trang login.
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		// Lưu thông tin vào request attribute trước khi forward (chuyển tiếp).
		request.setAttribute("user", loginedUser);
		// Forward sang /WEB-INF/views/productListView.jsp
		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/StudyProgram.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
