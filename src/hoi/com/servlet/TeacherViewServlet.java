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

import com.hoi.beans.Student;
import com.hoi.beans.ClassCourse;
import com.hoi.beans.Teacher;
import com.hoi.utils.DBUtils;
import com.hoi.utils.MyUtils;

/**
 * Servlet implementation class TeacherViewServlet
 */
@WebServlet("/Teacher")
public class TeacherViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TeacherViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		String teacherID = request.getParameter("TeacherID");
		System.out.println("teacherID:" + teacherID);
		String errorString = null;		
		List<ClassCourse> list = null;
		Teacher list1 = null;
		try {
			
			list = DBUtils.queryClassTeacher(conn, teacherID);
			System.out.println("Xong queryClassTeacher");
			list1 = DBUtils.queryTeacher(conn, teacherID);
			System.out.println("Xong queryTeacher");
			System.out.println( "Teacher ID:" +list1.getNameTeacher());
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("Class", list);
		request.setAttribute("Teacher", list1);

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
				.getRequestDispatcher("/WEB-INF/views/TeacherView.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
