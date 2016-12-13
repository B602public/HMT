package com.hanmote.pagemodel;
/**
 * 我的绩效VO实体
 * @author Administrator
 *
 */
public class MyPerformance {
	// SEM评估
	private String SEMEvaluation;
	// 质量评估
	private String qualityEvaluation;
	// 环境证书评估
	private String envirCertEvaluation;
	// 物流审计
	private String logisticsEvaluation;
	// 环境评估
	private String envirEvaluatioin;
	// 其他
	private String others;
	
	public String getSEMEvaluation() {
		return SEMEvaluation;
	}
	public void setSEMEvaluation(String sEMEvaluation) {
		SEMEvaluation = sEMEvaluation;
	}
	public String getQualityEvaluation() {
		return qualityEvaluation;
	}
	public void setQualityEvaluation(String qualityEvaluation) {
		this.qualityEvaluation = qualityEvaluation;
	}
	public String getEnvirCertEvaluation() {
		return envirCertEvaluation;
	}
	public void setEnvirCertEvaluation(String envirCertEvaluation) {
		this.envirCertEvaluation = envirCertEvaluation;
	}
	public String getLogisticsEvaluation() {
		return logisticsEvaluation;
	}
	public void setLogisticsEvaluation(String logisticsEvaluation) {
		this.logisticsEvaluation = logisticsEvaluation;
	}
	public String getEnvirEvaluatioin() {
		return envirEvaluatioin;
	}
	public void setEnvirEvaluatioin(String envirEvaluatioin) {
		this.envirEvaluatioin = envirEvaluatioin;
	}
	public String getOthers() {
		return others;
	}
	public void setOthers(String others) {
		this.others = others;
	}
}
