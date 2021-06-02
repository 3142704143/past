package com.mox.entity.plan;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_plan_list`")
public class AoaPlanList {
    @Id
    @Column(name = "`plan_id`")
    @GeneratedValue(generator = "JDBC")
    private Long planId;

    @Id
    @Column(name = "`start_time`")
    private Date startTime;

    @Column(name = "`create_time`")
    private Date createTime;

    @Column(name = "`end_time`")
    private Date endTime;

    @Column(name = "`label`")
    private String label;

    @Column(name = "`plan_comment`")
    private String planComment;

    @Column(name = "`plan_content`")
    private String planContent;

    @Column(name = "`plan_summary`")
    private String planSummary;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`plan_user_id`")
    private Long planUserId;

    @Column(name = "`attach_id`")
    private Long attachId;

    /**
     * @return plan_id
     */
    public Long getPlanId() {
        return planId;
    }

    /**
     * @param planId
     */
    public void setPlanId(Long planId) {
        this.planId = planId;
    }

    /**
     * @return start_time
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * @param startTime
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * @return create_time
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * @param createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * @return end_time
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * @param endTime
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * @return label
     */
    public String getLabel() {
        return label;
    }

    /**
     * @param label
     */
    public void setLabel(String label) {
        this.label = label;
    }

    /**
     * @return plan_comment
     */
    public String getPlanComment() {
        return planComment;
    }

    /**
     * @param planComment
     */
    public void setPlanComment(String planComment) {
        this.planComment = planComment;
    }

    /**
     * @return plan_content
     */
    public String getPlanContent() {
        return planContent;
    }

    /**
     * @param planContent
     */
    public void setPlanContent(String planContent) {
        this.planContent = planContent;
    }

    /**
     * @return plan_summary
     */
    public String getPlanSummary() {
        return planSummary;
    }

    /**
     * @param planSummary
     */
    public void setPlanSummary(String planSummary) {
        this.planSummary = planSummary;
    }

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
     * @return title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return type_id
     */
    public Long getTypeId() {
        return typeId;
    }

    /**
     * @param typeId
     */
    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    /**
     * @return plan_user_id
     */
    public Long getPlanUserId() {
        return planUserId;
    }

    /**
     * @param planUserId
     */
    public void setPlanUserId(Long planUserId) {
        this.planUserId = planUserId;
    }

    /**
     * @return attach_id
     */
    public Long getAttachId() {
        return attachId;
    }

    /**
     * @param attachId
     */
    public void setAttachId(Long attachId) {
        this.attachId = attachId;
    }
}