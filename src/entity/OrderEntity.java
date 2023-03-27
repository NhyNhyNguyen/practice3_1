package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "ORDERS")
public class OrderEntity {

	@Id
	@Column(name = "ID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ORDER_SEQ")
	@SequenceGenerator(name = "ORDER_SEQ", sequenceName = "ORDER_SEQ", allocationSize = 1, initialValue = 1)
	private Long id;

	@Column(name = "PRODUCT_TYPE")
	private String productType;

	@Column(name = "CONNECTED_POWER")
	private Integer connectedPower;

	@Column(name = "CABLE_LENGTH")
	private Integer cableLength;

	@Column(name = "REQUIRE_METER")
	private boolean requireMeter;

	@Column(name = "BATTERY")
	private String battery;

	@Column(name = "TOTAL")
	private Double total;

	@Column(name = "CLECK_COMMENT")
	private String cleckComment;

	@Column(name = "MANAGE_COMMENT")
	private String managerComment;

	public OrderEntity() {
	}
	

	public OrderEntity(Long id, String productType, Integer connectedPower, Integer cableLength, boolean requireMeter,
			String battery, Double total, String cleckComment, String managerComment) {
		super();
		this.id = id;
		this.productType = productType;
		this.connectedPower = connectedPower;
		this.cableLength = cableLength;
		this.requireMeter = requireMeter;
		this.battery = battery;
		this.total = total;
		this.cleckComment = cleckComment;
		this.managerComment = managerComment;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public Integer getConnectedPower() {
		return connectedPower;
	}

	public void setConnectedPower(Integer connectedPower) {
		this.connectedPower = connectedPower;
	}

	public Integer getCableLength() {
		return cableLength;
	}

	public void setCableLength(Integer cableLength) {
		this.cableLength = cableLength;
	}

	public boolean isRequireMeter() {
		return requireMeter;
	}

	public void setRequireMeter(boolean requireMeter) {
		this.requireMeter = requireMeter;
	}

	public String getBattery() {
		return battery;
	}

	public void setBattery(String battery) {
		this.battery = battery;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}


	public String getCleckComment() {
		return cleckComment;
	}


	public void setCleckComment(String cleckComment) {
		this.cleckComment = cleckComment;
	}


	public String getManagerComment() {
		return managerComment;
	}


	public void setManagerComment(String managerComment) {
		this.managerComment = managerComment;
	}
	
	
	

}
