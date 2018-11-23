package com.hoi.beans;

public class Subject {
	private String SubjectID;
	private String NameSubject;
	private int Credits;
	private int NumberOfHours;
	private String TypeOfSubjectID;
	
	public Subject() {
		
	}
	
	public Subject(String subjectID, String nameSubject, int credits, int numberOfHours, String typeOfSubjectID) {
		this.SubjectID = subjectID;
		this.NameSubject = nameSubject;
		this.Credits = credits;
		this.NumberOfHours = numberOfHours;
		this.TypeOfSubjectID = typeOfSubjectID;
	}
	
	
	public String getSubjectID() {
		return SubjectID;
	}
	public void setSubjectID(String subjectID) {
		SubjectID = subjectID;
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
	public int getNumberOfHours() {
		return NumberOfHours;
	}
	public void setNumberOfHours(int numberOfHours) {
		NumberOfHours = numberOfHours;
	}
	public String getTypeOfSubjectID() {
		return TypeOfSubjectID;
	}
	public void setTypeOfSubjectID(String typeOfSubjectID) {
		TypeOfSubjectID = typeOfSubjectID;
	}
	
}
