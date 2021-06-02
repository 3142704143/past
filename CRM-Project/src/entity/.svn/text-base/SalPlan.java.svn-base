package entity;

import java.sql.Timestamp;

/**
 * SalPlan entity. @author MyEclipse Persistence Tools
 */

public class SalPlan implements java.io.Serializable {

	// Fields

	private Integer plaId;
	private Timestamp plaDate;
	private String plaTodo;
	private String plaResult;

	private SalChance salchance;
	
	
	// Constructors

	
	/** default constructor */
	public SalPlan() {
	}

	public SalChance getSalchance() {
		return salchance;
	}

	public void setSalchance(SalChance salchance) {
		this.salchance = salchance;
	}

	// Property accessors

	public Integer getPlaId() {
		return this.plaId;
	}

	public void setPlaId(Integer plaId) {
		this.plaId = plaId;
	}

	public Timestamp getPlaDate() {
		return this.plaDate;
	}

	public void setPlaDate(Timestamp plaDate) {
		this.plaDate = plaDate;
	}

	public String getPlaTodo() {
		return this.plaTodo;
	}

	public void setPlaTodo(String plaTodo) {
		this.plaTodo = plaTodo;
	}

	public String getPlaResult() {
		return this.plaResult;
	}

	public void setPlaResult(String plaResult) {
		this.plaResult = plaResult;
	}

	public SalPlan(Timestamp plaDate, String plaTodo, SalChance salchance) {
		super();
		this.plaDate = plaDate;
		this.plaTodo = plaTodo;
		this.salchance = salchance;
	}

	@Override
	public String toString() {
		return "SalPlan [plaDate=" + plaDate + ", plaId=" + plaId
				+ ", plaResult=" + plaResult + ", plaTodo=" + plaTodo
				+ ", salchance=" + salchance + "]";
	}
	
}