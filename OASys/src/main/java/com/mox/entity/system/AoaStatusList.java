package com.mox.entity.system;

import javax.persistence.*;

@Table(name = "`aoa_status_list`")
public class AoaStatusList {
    @Id
    @Column(name = "`status_id`")
    @GeneratedValue(generator = "JDBC")
    private Long statusId;

    @Column(name = "`status_color`")
    private String statusColor;

    @Column(name = "`status_model`")
    private String statusModel;

    @Column(name = "`status_name`")
    private String statusName;

    @Column(name = "`sort_value`")
    private Integer sortValue;

    @Column(name = "`sort_precent`")
    private String sortPrecent;

    /**
     * @return status_id
     */
    public Long getStatusId() {
        return statusId;
    }

    /**
     * @param statusId
     */
    public void setStatusId(Long statusId) {
        this.statusId = statusId;
    }

    /**
     * @return status_color
     */
    public String getStatusColor() {
        return statusColor;
    }

    /**
     * @param statusColor
     */
    public void setStatusColor(String statusColor) {
        this.statusColor = statusColor;
    }

    /**
     * @return status_model
     */
    public String getStatusModel() {
        return statusModel;
    }

    /**
     * @param statusModel
     */
    public void setStatusModel(String statusModel) {
        this.statusModel = statusModel;
    }

    /**
     * @return status_name
     */
    public String getStatusName() {
        return statusName;
    }

    /**
     * @param statusName
     */
    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    /**
     * @return sort_value
     */
    public Integer getSortValue() {
        return sortValue;
    }

    /**
     * @param sortValue
     */
    public void setSortValue(Integer sortValue) {
        this.sortValue = sortValue;
    }

    /**
     * @return sort_precent
     */
    public String getSortPrecent() {
        return sortPrecent;
    }

    /**
     * @param sortPrecent
     */
    public void setSortPrecent(String sortPrecent) {
        this.sortPrecent = sortPrecent;
    }

	@Override
	public String toString() {
		return "AoaStatusList [statusId=" + statusId + ", statusColor=" + statusColor + ", statusModel=" + statusModel
				+ ", statusName=" + statusName + ", sortValue=" + sortValue + ", sortPrecent=" + sortPrecent + "]";
	}
    
    
}