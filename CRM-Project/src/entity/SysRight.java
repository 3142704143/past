package entity;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.annotation.JSONField;

/**
 * SysRight entity. @author MyEclipse Persistence Tools
 */

public class SysRight implements java.io.Serializable {

	// Fields

	private Integer rightCode;
	private Integer rightParentCode;
	private String rightType;
	private String rightText;
	private String rightUrl;
	private String rightTip;

	@JSONField(serialize=false)
	private List<SysRole> roles;
	// Constructors

	public List<SysRole> getRoles() {
		return roles;
	}

	public void setRoles(List<SysRole> roles) {
		this.roles = roles;
	}

	/** default constructor */
	public SysRight() {
	}

	/** full constructor */
	public SysRight(Integer rightParentCode, String rightType,
			String rightText, String rightUrl, String rightTip) {
		this.rightParentCode = rightParentCode;
		this.rightType = rightType;
		this.rightText = rightText;
		this.rightUrl = rightUrl;
		this.rightTip = rightTip;
	}

	// Property accessors

	public Integer getRightCode() {
		return this.rightCode;
	}

	public void setRightCode(Integer rightCode) {
		this.rightCode = rightCode;
	}

	public Integer getRightParentCode() {
		return this.rightParentCode;
	}

	public void setRightParentCode(Integer rightParentCode) {
		this.rightParentCode = rightParentCode;
	}

	public String getRightType() {
		return this.rightType;
	}

	public void setRightType(String rightType) {
		this.rightType = rightType;
	}

	public String getRightText() {
		return this.rightText;
	}

	public void setRightText(String rightText) {
		this.rightText = rightText;
	}

	public String getRightUrl() {
		return this.rightUrl;
	}

	public void setRightUrl(String rightUrl) {
		this.rightUrl = rightUrl;
	}

	public String getRightTip() {
		return this.rightTip;
	}

	public void setRightTip(String rightTip) {
		this.rightTip = rightTip;
	}

	@Override
	public String toString() {
		if (this!=null) {
			return JSON.toJSONString(this);
		}
		return null;
	}
}