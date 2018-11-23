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
import com.hoi.utils.DBUtils;
import com.hoi.utils.MyUtils;

/**
 * Servlet implementation class ClassCourseServlet
 */
@WebServlet("/Class")
public class ClassCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassCourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection conn = MyUtils.getStoredConnection(request);
		String SubjectID = request.getParameter("id");
		System.out.println("SubjectID:" + SubjectID);
		String errorString = null;
		List<ClassCourse> list = null;
		try {
			list = DBUtils.queryClass(conn, SubjectID);
			
			System.out.println( "Name:" + list.getClass().getName());
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("SubjectList", list);

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
				.getRequestDispatcher("/WEB-INF/views/ClassSourse.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
