package com.ehr.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "DiabetesData")
public class DiabetesDataBean {
	
	private String numberOfMedications;
	private String plasmaGlucoseConcentration;
	private String diastolicBloodPressure;
	private String tricepsSkinFoldThickness;
	private String serumInsulin;
	private String bodyMassIndex;
	private String diabetesPedigreeFunction;
	private String age;
	private String diabetesProblem;
	
	public String getDiabetesProblem() {
		return diabetesProblem;
	}
	public void setDiabetesProblem(String diabetesProblem) {
		this.diabetesProblem = diabetesProblem;
	}
	public String getNumberOfMedications() {
		return numberOfMedications;
	}
	public void setNumberOfMedications(String numberOfMedications) {
		this.numberOfMedications = numberOfMedications;
	}
	public String getPlasmaGlucoseConcentration() {
		return plasmaGlucoseConcentration;
	}
	public void setPlasmaGlucoseConcentration(String plasmaGlucoseConcentration) {
		this.plasmaGlucoseConcentration = plasmaGlucoseConcentration;
	}
	public String getDiastolicBloodPressure() {
		return diastolicBloodPressure;
	}
	public void setDiastolicBloodPressure(String diastolicBloodPressure) {
		this.diastolicBloodPressure = diastolicBloodPressure;
	}
	public String getTricepsSkinFoldThickness() {
		return tricepsSkinFoldThickness;
	}
	public void setTricepsSkinFoldThickness(String tricepsSkinFoldThickness) {
		this.tricepsSkinFoldThickness = tricepsSkinFoldThickness;
	}
	public String getSerumInsulin() {
		return serumInsulin;
	}
	public void setSerumInsulin(String serumInsulin) {
		this.serumInsulin = serumInsulin;
	}
	public String getBodyMassIndex() {
		return bodyMassIndex;
	}
	public void setBodyMassIndex(String bodyMassIndex) {
		this.bodyMassIndex = bodyMassIndex;
	}
	public String getDiabetesPedigreeFunction() {
		return diabetesPedigreeFunction;
	}
	public void setDiabetesPedigreeFunction(String diabetesPedigreeFunction) {
		this.diabetesPedigreeFunction = diabetesPedigreeFunction;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}

}
