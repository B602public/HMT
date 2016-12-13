package com.hanmote.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 产能实体类
 */
@Entity
@Table(name = "Org_Capacity", schema = "dbo")
public class OrgCapacity implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer peopleNum;
	private String floorSpace;
	private String factoryArea;
	private Float factoryRatio;
	private String warehouseSituation;
	private Float warehouseArea;
	private String transportType;
	private Float transportDistance;
	private String transportTime;
	private String transitName;
	private Float naturalgasConsumption;
	private Float electricityConsumption;
	private Integer isRentAlternator;
	private Float electricPowerGeneration;
	private Set<OrgProduct> orgProducts = new HashSet<OrgProduct>(0);

	// Constructors

	/** default constructor */
	public OrgCapacity() {
	}

	/** full constructor */
	public OrgCapacity(Integer peopleNum, String floorSpace,
			String factoryArea, Float factoryRatio, String warehouseSituation,
			Float warehouseArea, String transportType, Float transportDistance,
			String transportTime, String transitName,
			Float naturalgasConsumption, Float electricityConsumption,
			Integer isRentAlternator, Float electricPowerGeneration,
			Set<OrgProduct> orgProducts) {
		this.peopleNum = peopleNum;
		this.floorSpace = floorSpace;
		this.factoryArea = factoryArea;
		this.factoryRatio = factoryRatio;
		this.warehouseSituation = warehouseSituation;
		this.warehouseArea = warehouseArea;
		this.transportType = transportType;
		this.transportDistance = transportDistance;
		this.transportTime = transportTime;
		this.transitName = transitName;
		this.naturalgasConsumption = naturalgasConsumption;
		this.electricityConsumption = electricityConsumption;
		this.isRentAlternator = isRentAlternator;
		this.electricPowerGeneration = electricPowerGeneration;
		this.orgProducts = orgProducts;
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

	@Column(name = "peopleNum")
	public Integer getPeopleNum() {
		return this.peopleNum;
	}

	public void setPeopleNum(Integer peopleNum) {
		this.peopleNum = peopleNum;
	}

	@Column(name = "floorSpace")
	public String getFloorSpace() {
		return this.floorSpace;
	}

	public void setFloorSpace(String floorSpace) {
		this.floorSpace = floorSpace;
	}

	@Column(name = "factoryArea")
	public String getFactoryArea() {
		return this.factoryArea;
	}

	public void setFactoryArea(String factoryArea) {
		this.factoryArea = factoryArea;
	}

	@Column(name = "factoryRatio", precision = 24, scale = 0)
	public Float getFactoryRatio() {
		return this.factoryRatio;
	}

	public void setFactoryRatio(Float factoryRatio) {
		this.factoryRatio = factoryRatio;
	}

	@Column(name = "warehouseSituation")
	public String getWarehouseSituation() {
		return this.warehouseSituation;
	}

	public void setWarehouseSituation(String warehouseSituation) {
		this.warehouseSituation = warehouseSituation;
	}

	@Column(name = "warehouseArea", precision = 24, scale = 0)
	public Float getWarehouseArea() {
		return this.warehouseArea;
	}

	public void setWarehouseArea(Float warehouseArea) {
		this.warehouseArea = warehouseArea;
	}

	@Column(name = "transportType")
	public String getTransportType() {
		return this.transportType;
	}

	public void setTransportType(String transportType) {
		this.transportType = transportType;
	}

	@Column(name = "transportDistance", precision = 24, scale = 0)
	public Float getTransportDistance() {
		return this.transportDistance;
	}

	public void setTransportDistance(Float transportDistance) {
		this.transportDistance = transportDistance;
	}

	@Column(name = "transportTime")
	public String getTransportTime() {
		return this.transportTime;
	}

	public void setTransportTime(String transportTime) {
		this.transportTime = transportTime;
	}

	@Column(name = "transitName")
	public String getTransitName() {
		return this.transitName;
	}

	public void setTransitName(String transitName) {
		this.transitName = transitName;
	}

	@Column(name = "naturalgasConsumption", precision = 24, scale = 0)
	public Float getNaturalgasConsumption() {
		return this.naturalgasConsumption;
	}

	public void setNaturalgasConsumption(Float naturalgasConsumption) {
		this.naturalgasConsumption = naturalgasConsumption;
	}

	@Column(name = "electricityConsumption", precision = 24, scale = 0)
	public Float getElectricityConsumption() {
		return this.electricityConsumption;
	}

	public void setElectricityConsumption(Float electricityConsumption) {
		this.electricityConsumption = electricityConsumption;
	}

	@Column(name = "isRentAlternator")
	public Integer getIsRentAlternator() {
		return this.isRentAlternator;
	}

	public void setIsRentAlternator(Integer isRentAlternator) {
		this.isRentAlternator = isRentAlternator;
	}

	@Column(name = "electricPowerGeneration", precision = 24, scale = 0)
	public Float getElectricPowerGeneration() {
		return this.electricPowerGeneration;
	}

	public void setElectricPowerGeneration(Float electricPowerGeneration) {
		this.electricPowerGeneration = electricPowerGeneration;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "orgCapacity")
	public Set<OrgProduct> getOrgProducts() {
		return this.orgProducts;
	}

	public void setOrgProducts(Set<OrgProduct> orgProducts) {
		this.orgProducts = orgProducts;
	}

	public void addOrgProduct(OrgProduct orgProduct){
		orgProduct.setOrgCapacity(this);
		orgProducts.add(orgProduct);
	}
}