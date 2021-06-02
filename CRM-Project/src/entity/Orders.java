package entity;

import java.sql.Timestamp;
import java.util.List;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Integer odrId;
	private String odrCustomer;
	private Timestamp odrDate;
	private String odrAddr;
	private Integer odrStatus;
	private List<OrdersLine> ol;
	// Constructors
	
	private CstCustomer customer;
	

	public CstCustomer getCustomer() {
		return customer;
	}

	
	public void setCustomer(CstCustomer customer) {
		this.customer = customer;
	}

	/** default constructor */
	public Orders() {
	}

	public List<OrdersLine> getOl() {
		return ol;
	}

	public void setOl(List<OrdersLine> ol) {
		this.ol = ol;
	}

	/** minimal constructor */
	public Orders(Integer odrStatus) {
		this.odrStatus = odrStatus;
	}

	/** full constructor */
	public Orders(String odrCustNo, String odrCustomer, Timestamp odrDate,
			String odrAddr, Integer odrStatus) {
		this.odrCustomer = odrCustomer;
		this.odrDate = odrDate;
		this.odrAddr = odrAddr;
		this.odrStatus = odrStatus;
	}

	// Property accessors

	public Integer getOdrId() {
		return this.odrId;
	}

	public void setOdrId(Integer odrId) {
		this.odrId = odrId;
	}

	

	public String getOdrCustomer() {
		return this.odrCustomer;
	}

	public void setOdrCustomer(String odrCustomer) {
		this.odrCustomer = odrCustomer;
	}

	public Timestamp getOdrDate() {
		return this.odrDate;
	}

	public void setOdrDate(Timestamp odrDate) {
		this.odrDate = odrDate;
	}

	public String getOdrAddr() {
		return this.odrAddr;
	}

	public void setOdrAddr(String odrAddr) {
		this.odrAddr = odrAddr;
	}

	public Integer getOdrStatus() {
		return this.odrStatus;
	}

	public void setOdrStatus(Integer odrStatus) {
		this.odrStatus = odrStatus;
	}

}