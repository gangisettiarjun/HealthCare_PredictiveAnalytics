package com.ehr.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "HeartData")
public class HeartDataBean {
	
	private String age;
	private String sex;
	private String chestPainType;
	private String restingBloodPressure;
	private String serumCholestrol;
	private String fastingBloodSugar;
	private String restingECGResult;
	private String maxHeartRate;
	private String eIAngina;
	private String oldPeak;
	private String slopePeak;
	private String vsFlouroscopy;
	private String thal;
	private String heartProblem;
	
	public String getHeartProblem() {
		return heartProblem;
	}
	public void setHeartProblem(String heartProblem) {
		this.heartProblem = heartProblem;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getChestPainType() {
		return chestPainType;
	}
	public void setChestPainType(String chestPainType) {
		this.chestPainType = chestPainType;
	}
	public String getRestingBloodPressure() {
		return restingBloodPressure;
	}
	public void setRestingBloodPressure(String restingBloodPressure) {
		this.restingBloodPressure = restingBloodPressure;
	}
	public String getSerumCholestrol() {
		return serumCholestrol;
	}
	public void setSerumCholestrol(String serumCholestrol) {
		this.serumCholestrol = serumCholestrol;
	}
	public String getFastingBloodSugar() {
		return fastingBloodSugar;
	}
	public void setFastingBloodSugar(String fastingBloodSugar) {
		this.fastingBloodSugar = fastingBloodSugar;
	}
	public String getRestingECGResult() {
		return restingECGResult;
	}
	public void setRestingECGResult(String restingECGResult) {
		this.restingECGResult = restingECGResult;
	}
	public String getMaxHeartRate() {
		return maxHeartRate;
	}
	public void setMaxHeartRate(String maxHeartRate) {
		this.maxHeartRate = maxHeartRate;
	}
	public String geteIAngina() {
		return eIAngina;
	}
	public void seteIAngina(String eIAngina) {
		this.eIAngina = eIAngina;
	}
	public String getOldPeak() {
		return oldPeak;
	}
	public void setOldPeak(String oldPeak) {
		this.oldPeak = oldPeak;
	}
	public String getSlopePeak() {
		return slopePeak;
	}
	public void setSlopePeak(String slopePeak) {
		this.slopePeak = slopePeak;
	}
	public String getVsFlouroscopy() {
		return vsFlouroscopy;
	}
	public void setVsFlouroscopy(String vsFlouroscopy) {
		this.vsFlouroscopy = vsFlouroscopy;
	}
	public String getThal() {
		return thal;
	}
	public void setThal(String thal) {
		this.thal = thal;
	}

}
