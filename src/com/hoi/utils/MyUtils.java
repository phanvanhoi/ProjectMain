package com.hoi.utils;

import java.sql.Connection;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hoi.beans.Student;

public class MyUtils {

	public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";

	private static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";

	// Lưu trữ Connection vào attribute của request.
	// Thông tin lưu trữ này chỉ tồn tại trong thời gian yêu cầu (request)
	// cho tới khi dữ liệu được trả về trình duyệt người dùng.
	public static void storeConnection(ServletRequest request, Connection conn) {
		request.setAttribute(ATT_NAME_CONNECTION, conn);
	}

	// Lấy đối tượng Connection đã được lưu trữ trong attribute của request.
	public static Connection getStoredConnection(ServletRequest request) {
		Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
		System.out.println(conn);
		return conn;
	}

	// Lưu trữ thông tin người dùng đã login vào Session.
	public static void storeLoginedUser(HttpSession session, Student student) {
		// Trên JSP có thể truy cập thông qua ${Student}
		session.setAttribute("Student", student);
	}

	// Lấy thông tin người dùng lưu trữ trong Session.
	public static Student getLoginedUser(HttpSession session) {
		Student student = (Student) session.getAttribute("Student");
		return student;
	}

	// Lưu thông tin người dùng vào Cookie.
	public static void storeUserCookie(HttpServletResponse response, Student user) {
		System.out.println("Store user cookie");
		Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, user.getStudentID());
		// 1 ngày (Đã đổi ra giây)
		cookieUserName.setMaxAge(3600);
		response.addCookie(cookieUserName);
	}

	public static String getUserNameInCookie(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				System.out.println(cookie.getName() + "|");
				if (ATT_NAME_USER_NAME.equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}

	// Xóa Cookie của người dùng
	public static void deleteUserCookie(HttpServletResponse response) {
		Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, null);
		// 0 giây. (Cookie này sẽ hết hiệu lực ngay lập tức)
		cookieUserName.setMaxAge(0);
		response.addCookie(cookieUserName);
	}

}