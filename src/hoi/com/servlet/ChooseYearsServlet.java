package hoi.com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hoi.beans.Student;
import com.hoi.utils.MyUtils;

/**
 * Servlet implementation class ChooseYearsServlet
 */
@WebServlet("/ChooseYearsServlet")
public class ChooseYearsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

		public ChooseYearsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("đã vào doGet");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();

		// Kiểm tra người dùng đã đăng nhập (login) chưa.
		Student loginedUser = MyUtils.getLoginedUser(session);

		// Nếu chưa đăng nhập (login).
		if (loginedUser == null) {
			// Redirect (Chuyển hướng) tới trang login.
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		} else {
			RequestDispatcher dispatcher = this.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/ChooseYears.jsp");

			dispatcher.forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String year = request.getParameter("chooseYears");
		String semester = request.getParameter("chooseSemester");
		request.setAttribute("year", year);
		request.setAttribute("semester", semester);
		System.out.println("đã vào doPost");
		System.out.println(request.getAttribute("year"));
		
		System.out.println(request.getAttribute("semester"));
		response.sendRedirect(request.getContextPath() + "/CourseRegistration");
	}

}
