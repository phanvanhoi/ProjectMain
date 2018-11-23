package com.hoi.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.hoi.beans.Student;
import com.hoi.beans.Subject;
import com.hoi.beans.ClassCourse;
import com.hoi.beans.Teacher;

public class DBUtils {

	public static Student findUser(Connection conn, //
			String SubjectID, String PassWord) throws SQLException {

		String sql = "Select a.StudentID, a.NameStudent, a.Email, a.Address, a.IdentityCard, a.PassWord, a.IndustryID from Student a " //
				+ " where a.StudentID = ? and a.PassWord= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, SubjectID);
		pstm.setString(2, PassWord);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			Student student = new Student();
			student.setStudentID(SubjectID);
			
			String NameStudent = rs.getString("NameStudent");
			student.setNameStudent(NameStudent);
			
			String Email = rs.getString("Email");
			student.setEmail(Email);
			
			String Address = rs.getString("Address");
			student.setAddress(Address);
			
			String IdentityCard = rs.getString("IdentityCard");
			student.setIdentityCard(IdentityCard);
			
			student.setPassWord(PassWord);
			
			String IndustryID = rs.getString("IndustryID");
			student.setIndustryID(IndustryID);
			
			return student;
		}
		return null;
	}

	public static Student findUser(Connection conn, String StudentID) throws SQLException {

		String sql = "Select a.StudentID, a.NameStudent, a.Email, a.Address, a.IdentityCard, a.PassWord, a.IndustryID from Student a "//
				+ " where a.StudentID = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, StudentID);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			
			Student student = new Student();
			student.setStudentID(StudentID);
			
			String NameStudent = rs.getString("NameStudent");
			student.setNameStudent(NameStudent);
			
			String Email = rs.getString("Email");
			student.setEmail(Email);
			
			String Address = rs.getString("Address");
			student.setAddress(Address);
			
			String IdentityCard = rs.getString("IdentityCard");
			student.setIdentityCard(IdentityCard);
			
			String PassWord = rs.getString("PassWord");
			student.setPassWord(PassWord);
			
			String IndustryID = rs.getString("IndustryID");
			student.setIndustryID(IndustryID);
			
			return student;
		}
		return null;
	}

	public static List<Subject> querySubject(Connection conn) throws SQLException {
		String sql = "Select a.SubjectID, a.NameSubject, a.Credits, a.NumberOfHours, a.TypeOfSubjectID from  Subject a";
		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Subject> list = new ArrayList<Subject>();
		while (rs.next()) {
			String subjectID = rs.getString("SubjectID");
			String nameSubject = rs.getString("NameSubject");
			int credits = rs.getInt("Credits");
			int numberOfHours = rs.getInt("NumberOfHours");;
			String typeOfSubjectID = rs.getString("TypeOfSubjectID");
			Subject subject = new Subject();
			subject.setSubjectID(subjectID);
			subject.setNameSubject(nameSubject);
			subject.setCredits(credits);
			subject.setNumberOfHours(numberOfHours);
			subject.setTypeOfSubjectID(typeOfSubjectID);			
			list.add(subject);
		}
		return list;
	}

	public static List<Subject> querySubject_Time(Connection conn) throws SQLException {
		String sql = "Select DISTINCT a.SubjectID, a.NameSubject, a.Credits, a.NumberOfHours, a.TypeOfSubjectID from  Subject a LEFT join Class b on a.SubjectID = b.SubjectID  where b.YearID='1819' and b.SemesterID='HKII' and b.SubjectID not in(select Student_Class.SubjectID from Student_Class)";
		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Subject> list = new ArrayList<Subject>();
		while (rs.next()) {
			String subjectID = rs.getString("SubjectID");
			String nameSubject = rs.getString("NameSubject");
			int credits = rs.getInt("Credits");
			int numberOfHours = rs.getInt("NumberOfHours");;
			String typeOfSubjectID = rs.getString("TypeOfSubjectID");
			Subject subject = new Subject();
			subject.setSubjectID(subjectID);
			subject.setNameSubject(nameSubject);
			subject.setCredits(credits);
			subject.setNumberOfHours(numberOfHours);
			subject.setTypeOfSubjectID(typeOfSubjectID);
			list.add(subject);
		}
		return list;
	}
	
	public static List<ClassCourse> querySubjectFinish(Connection conn) throws SQLException {
		String sql = "Select DISTINCT b.ClassID, a.NameSubject, a.Credits, a.NumberOfHours,sc.Score, a.TypeOfSubjectID from  Subject a" + //
				"LEFT join Class b on a.SubjectID = b.SubjectID" + //
				"inner join Student_Class sc on b.ClassID = sc.ClassID" + //
				"where b.SubjectID  in(select Student_Class.SubjectID from Student_Class);";
		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<ClassCourse> list = new ArrayList<ClassCourse>();
		while (rs.next()) {
			String classID = rs.getString("ClassID");
			String nameSubject = rs.getString("NameSubject");
			int credits = rs.getInt("Credits");			
			float score = rs.getFloat("Score");			
			ClassCourse classCourse = new ClassCourse();
			classCourse.setClassID(classID);
			classCourse.setNameSubject(nameSubject);
			classCourse.setCredits(credits); 	
			classCourse.setNameTeacher("");
			classCourse.setDates(0);
			classCourse.setScore(score);
			list.add(classCourse);
		}
		return list;
	}
	
	
	public static List<ClassCourse> queryClass(Connection conn, String SubjectID) throws SQLException {
		String sql = "Select c.ClassID, s.NameSubject, s.Credits, t.NameTeacher, c.Dates, c.StartTime, t.TeacherID from Class c INNER JOIN Subject s on c.SubjectID = s.SubjectID INNER JOIN Teachers t on c.TeacherID = t.TeacherID where s.SubjectID = '" + SubjectID + "'";
		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<ClassCourse> list = new ArrayList<ClassCourse>();
		while (rs.next()) {
			String classID = rs.getString("ClassID");
			String nameSubject = rs.getString("NameSubject");
			int credits = rs.getInt("Credits");
			String nameTeacher = rs.getString("NameTeacher");
			int dates = rs.getInt("Dates");
			String startTime = rs.getString("StartTime");
			String teacherID = rs.getString("TeacherID");
			ClassCourse _class = new ClassCourse();
			_class.setClassID(classID);
			_class.setNameSubject(nameSubject);
			_class.setCredits(credits);
			_class.setNameTeacher(nameTeacher);
			_class.setDates(dates);
			_class.setStartTime(startTime);
			_class.setTeacherID(teacherID);
			list.add(_class);
		}
		return list;
	}
	
	public static List<ClassCourse> queryClassTeacher(Connection conn, String TeacherID) throws SQLException {
		String sql = "Select c.ClassID, s.NameSubject, s.Credits, t.NameTeacher, c.Dates, c.StartTime, t.TeacherID from Class c INNER JOIN Subject s on c.SubjectID = s.SubjectID INNER JOIN Teachers t on c.TeacherID = t.TeacherID where t.TeacherID = '" + TeacherID + "' and c.YearID='1819' and c.SemesterID='HKII'";
		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<ClassCourse> list = new ArrayList<ClassCourse>();
		while (rs.next()) {
			String classID = rs.getString("ClassID");
			String nameSubject = rs.getString("NameSubject");
			int credits = rs.getInt("Credits");
			String nameTeacher = rs.getString("NameTeacher");
			int dates = rs.getInt("Dates");
			String startTime = rs.getString("StartTime");
			String teacherID = rs.getString("TeacherID");
			ClassCourse _class = new ClassCourse();
			_class.setClassID(classID);
			_class.setNameSubject(nameSubject);
			_class.setCredits(credits);
			_class.setNameTeacher(nameTeacher);
			_class.setDates(dates);
			_class.setStartTime(startTime);
			_class.setTeacherID(teacherID);
			list.add(_class);
		}
		return list;
	}
	
	public static Teacher queryTeacher(Connection conn , String TeacherID) throws SQLException {
		String sql = "select t.NameTeacher, t.Email, t.Address, t.Advantages, t.EducationLevel from Teachers t where TeacherID ='"+ TeacherID +"';";
		PreparedStatement pstm = conn.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		Teacher teacher = new Teacher();
		while(rs.next()) {
			String nameTeacher = rs.getString("NameTeacher");
			String email = rs.getString("Email");
			String address = rs.getString("Address");
			String advantages = rs.getString("Advantages");;
			String educationLevel = rs.getString("EducationLevel");
			teacher.setNameTeacher(nameTeacher);
			teacher.setEmail(email);
			teacher.setAddress(address);
			teacher.setAdvantages(advantages);
			teacher.setEducationLevel(educationLevel);		
			}	
		return teacher;
	}
	
	
	public static List<Subject> queryStudent_Subject(Connection conn) throws SQLException {
		String sql = "Select a.SubjectID, a.NameSubject, a.Credits, a.NumberOfHours, a.TypeOfSubjectID from  Subject a";
		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Subject> list = new ArrayList<Subject>();
		while (rs.next()) {
			String subjectID = rs.getString("SubjectID");
			String nameSubject = rs.getString("NameSubject");
			int credits = rs.getInt("Credits");
			int numberOfHours = rs.getInt("NumberOfHours");;
			String typeOfSubjectID = rs.getString("TypeOfSubjectID");
			Subject subject = new Subject();
			subject.setSubjectID(subjectID);
			subject.setNameSubject(nameSubject);
			subject.setCredits(credits);
			subject.setNumberOfHours(numberOfHours);
			subject.setTypeOfSubjectID(typeOfSubjectID);			
			list.add(subject);
		}
		return list;
	}
	
	public static Subject findSubject(Connection conn, String SubjectID) throws SQLException {
		String sql = "Select a.SubjectID, a.NameSubject, a.Credits, a.NumberOfHours, a.TypeOfSubjectID from  Subject a where a.SubjectID=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, SubjectID);
		ResultSet rs = pstm.executeQuery();
		while (rs.next()) {
			String subjectID = rs.getString("SubjectID");
			String nameSubject = rs.getString("NameSubject");
			int credits = rs.getInt("Credits");
			int numberOfHours = rs.getInt("NumberOfHours");;
			String typeOfSubjectID = rs.getString("TypeOfSubjectID");
			Subject subject = new Subject(subjectID, nameSubject, credits, numberOfHours, typeOfSubjectID);
			return subject;
		}
		return null;
	}

	public static void updateSubject(Connection conn, Subject subject) throws SQLException {
		String sql = "Update Subject set NameSubject =?, Credits=?, NumberOfHours=?, TypeOfSubjectID=? where SubjectID=? ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, subject.getNameSubject());
		pstm.setInt(2, subject.getCredits());
		pstm.setInt(3, subject.getNumberOfHours());
		pstm.setString(4, subject.getTypeOfSubjectID());
		pstm.setString(5, subject.getSubjectID());
		pstm.executeUpdate();
	}

	public static void insertSubject(Connection conn, Subject subject) throws SQLException {
		String sql = "Insert into Product(SubjectID,NameSubject,Credits,NumberOfHours,TypeOfSubjectID) values (?,?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, subject.getSubjectID());
		pstm.setString(2, subject.getNameSubject());
		pstm.setInt(3, subject.getCredits());
		pstm.setInt(4, subject.getNumberOfHours());
		pstm.setString(5, subject.getTypeOfSubjectID());
		pstm.executeUpdate();
	}

	public static void deleteSubject(Connection conn, String SubjectID) throws SQLException {
		String sql = "Delete From Product where SubjectID= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, SubjectID);

		pstm.executeUpdate();
	}

}