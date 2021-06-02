package entity;

import java.sql.Timestamp;

/**
 * CstActivity entity. @author MyEclipse Persistence Tools
 */

public class CstActivity implements java.io.Serializable {

	// Fields

	private Integer atvId;
	private String atvCustName;
	private Timestamp atvDate;
	private String atvPlace;
	private String atvTitle;
	private String atvDesc;

	private CstCustomer customer;
	
	// Constructors

	public CstCustomer getCustomer() {
		return customer;
	}

	public void setCustomer(CstCustomer customer) {
		this.customer = customer;
	}

	/** default constructor */
	public CstActivity() {
	}

	/** minimal constructor */
	public CstActivity(Timestamp atvDate, String atvPlace, String atvTitle) {
		this.atvDate = atvDate;
		this.atvPlace = atvPlace;
		this.atvTitle = atvTitle;
	}


	// Property accessors

	public Integer getAtvId() {
		return this.atvId;
	}

	public void setAtvId(Integer atvId) {
		this.atvId = atvId;
	}


	public String getAtvCustName() {
		return this.atvCustName;
	}

	public void setAtvCustName(String atvCustName) {
		this.atvCustName = atvCustName;
	}

	public Timestamp getAtvDate() {
		return this.atvDate;
	}

	public void setAtvDate(Timestamp atvDate) {
		this.atvDate = atvDate;
	}

	public String getAtvPlace() {
		return this.atvPlace;
	}

	public void setAtvPlace(String atvPlace) {
		this.atvPlace = atvPlace;
	}

	public String getAtvTitle() {
		return this.atvTitle;
	}

	public void setAtvTitle(String atvTitle) {
		this.atvTitle = atvTitle;
	}

	public String getAtvDesc() {
		return this.atvDesc;
	}

	public void setAtvDesc(String atvDesc) {
		this.atvDesc = atvDesc;
	}

}