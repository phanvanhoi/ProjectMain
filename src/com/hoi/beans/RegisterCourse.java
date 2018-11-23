package com.hoi.beans;

public class RegisterCourse {
	private String ClassID;
	private String NameSubject;
	private int Credits;
	private String TypeOfSubject;
	private String NameTeacher;
	public String getClassID() {
		return ClassID;
	}
	public void setClassID(String classID) {
		ClassID = classID;
	}
	public String getNameSubject() {
		return NameSubject;
	}
	public void setNameSubject(String nameSubject) {
		NameSubject = nameSubject;
	}
	public int getCredits() {
		return Credits;
	}
	public void setCredits(int credits) {
		Credits = credits;
	}
	public String getTypeOfSubject() {
		return TypeOfSubject;
	}
	public void setTypeOfSubject(String typeOfSubject) {
		TypeOfSubject = typeOfSubject;
	}
	public String getNameTeacher() {
		return NameTeacher;
	}
	public void setNameTeacher(String nameTeacher) {
		NameTeacher = nameTeacher;
	}
	
}
