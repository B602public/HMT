package com.hanmote.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * 合同主键的类
 */
@Embeddable
public class AgreementContractId implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	// Fields
	private String agreementContractId;
	private Integer agreementContractVersion;

	// Constructors

	/** default constructor */
	public AgreementContractId() {
	}

	/** full constructor */
	public AgreementContractId(String agreementContractId,
			Integer agreementContractVersion) {
		this.agreementContractId = agreementContractId;
		this.agreementContractVersion = agreementContractVersion;
	}

	// Property accessors

	@Column(name = "Agreement_Contract_ID", nullable = false)
	public String getAgreementContractId() {
		return this.agreementContractId;
	}

	public void setAgreementContractId(String agreementContractId) {
		this.agreementContractId = agreementContractId;
	}

	@Column(name = "Agreement_Contract_Version", nullable = false)
	public Integer getAgreementContractVersion() {
		return this.agreementContractVersion;
	}

	public void setAgreementContractVersion(Integer agreementContractVersion) {
		this.agreementContractVersion = agreementContractVersion;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AgreementContractId))
			return false;
		AgreementContractId castOther = (AgreementContractId) other;

		return ((this.getAgreementContractId() == castOther
				.getAgreementContractId()) || (this.getAgreementContractId() != null
				&& castOther.getAgreementContractId() != null && this
				.getAgreementContractId().equals(
						castOther.getAgreementContractId())))
				&& ((this.getAgreementContractVersion() == castOther
						.getAgreementContractVersion()) || (this
						.getAgreementContractVersion() != null
						&& castOther.getAgreementContractVersion() != null && this
						.getAgreementContractVersion().equals(
								castOther.getAgreementContractVersion())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getAgreementContractId() == null ? 0 : this
						.getAgreementContractId().hashCode());
		result = 37
				* result
				+ (getAgreementContractVersion() == null ? 0 : this
						.getAgreementContractVersion().hashCode());
		return result;
	}

}