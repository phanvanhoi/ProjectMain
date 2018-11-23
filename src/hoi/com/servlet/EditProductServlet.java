package hoi.com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hoi.beans.Subject;
import com.hoi.utils.DBUtils;
import com.hoi.utils.MyUtils;

@WebServlet(urlPatterns = { "/editProduct" })
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditProductServlet() {
		super();
	}

	// Hiển thị trang sửa sản phẩm.
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);

		String code = (String) request.getParameter("SubjectID");

		Subject product = null;

		String errorString = null;

		try {
			product = DBUtils.findSubject(conn, code);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Không có lỗi.
		// Sản phẩm không tồn tại để edit.
		// Redirect sang trang danh sách sản phẩm.
		if (errorString != null && product == null) {
			response.sendRedirect(request.getServletPath() + "/productList");
			return;
		}

		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("product", product);

		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/editProductView.jsp");
		dispatcher.forward(request, response);

	}

	// Sau khi người dùng sửa đổi thông tin sản phẩm, và nhấn Submit.
	// Phương thức này sẽ được thực thi.
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		
		String subjectID = (String) request.getParameter("SubjectID");
		String nameSubject = (String) request.getParameter("NameSubject");
		int credits = 0;
		int numberOfHours = 0;
		String typeOfSubjectID = (String) request.getParameter("TypeOfSubjectID");
		try {
			credits = Integer.parseInt((String) request.getParameter("Credits"));
			numberOfHours= Integer.parseInt((String) request.getParameter("NumberOfHours"));
		} catch (Exception e) {
		}
		Subject subject = new Subject(subjectID, nameSubject, credits, numberOfHours, typeOfSubjectID);

		String errorString = null;

		try {
			DBUtils.updateSubject(conn, subject);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("subject", subject);

		// Nếu có lỗi forward sang trang edit.
		if (errorString != null) {
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/editProductView.jsp");
			dispatcher.forward(request, response);
		}
		// Nếu mọi thứ tốt đẹp.
		// Redirect sang trang danh sách sản phẩm.
		else {
			response.sendRedirect(request.getContextPath() + "/productList");
		}
	}

}