package com.hanmote.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * 产品/产能实体类
 * @author Administrator
 *
 */
@Entity
@Table(name = "Org_Product", schema = "dbo")
public class OrgProduct implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 1L;
	private Integer id;
	private OrgCapacity orgCapacity;
	private String productName;
	private Float annualSupply;
	private String equipmentType;
	private Float loadRatio;

	// Constructors

	/** default constructor */
	public OrgProduct() {
	}

	/** full constructor */
	public OrgProduct(OrgCapacity orgCapacity, String productName,
			Float annualSupply, String equipmentType, Float loadRatio) {
		this.orgCapacity = orgCapacity;
		this.productName = productName;
		this.annualSupply = annualSupply;
		this.equipmentType = equipmentType;
		this.loadRatio = loadRatio;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	@JoinColumn(name = "capacityId")
	public OrgCapacity getOrgCapacity() {
		return this.orgCapacity;
	}

	public void setOrgCapacity(OrgCapacity orgCapacity) {
		this.orgCapacity = orgCapacity;
	}

	@Column(name = "productName")
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "annualSupply", precision = 24, scale = 0)
	public Float getAnnualSupply() {
		return this.annualSupply;
	}

	public void setAnnualSupply(Float annualSupply) {
		this.annualSupply = annualSupply;
	}

	@Column(name = "equipmentType")
	public String getEquipmentType() {
		return this.equipmentType;
	}

	public void setEquipmentType(String equipmentType) {
		this.equipmentType = equipmentType;
	}

	@Column(name = "loadRatio", precision = 24, scale = 0)
	public Float getLoadRatio() {
		return this.loadRatio;
	}

	public void setLoadRatio(Float loadRatio) {
		this.loadRatio = loadRatio;
	}

}