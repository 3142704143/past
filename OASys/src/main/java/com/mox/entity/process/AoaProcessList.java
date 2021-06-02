package com.mox.entity.process;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_process_list`")
public class AoaProcessList {
    @Id
    @Column(name = "`process_id`")
    @GeneratedValue(generator = "JDBC")
    private Long processId;

    @Column(name = "`apply_time`")
    private Date applyTime;

    @Column(name = "`deeply_id`")
    private Long deeplyId;

    @Column(name = "`end_time`")
    private Date endTime;

    @Column(name = "`process_name`")
    private String processName;

    @Column(name = "`procsee_days`")
    private Integer procseeDays;

    @Column(name = "`is_checked`")
    private Integer isChecked;

    @Column(name = "`start_time`")
    private Date startTime;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`type_name`")
    private String typeName;

    @Column(name = "`pro_file_id`")
    private Long proFileId;

    @Column(name = "`process_user_id`")
    private Long processUserId;

    @Column(name = "`shenuser`")
    private String shenuser;

    @Column(name = "`process_des`")
    private String processDes;

    /**
     * @return process_id
     */
    public Long getProcessId() {
        return processId;
    }

    /**
     * @param processId
     */
    public void setProcessId(Long processId) {
        this.processId = processId;
    }

    /**
     * @return apply_time
     */
    public Date getApplyTime() {
        return applyTime;
    }

    /**
     * @param applyTime
     */
    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    /**
     * @return deeply_id
     */
    public Long getDeeplyId() {
        return deeplyId;
    }

    /**
     * @param deeplyId
     */
    public void setDeeplyId(Long deeplyId) {
        this.deeplyId = deeplyId;
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
     * @return process_name
     */
    public String getProcessName() {
        return processName;
    }

    /**
     * @param processName
     */
    public void setProcessName(String processName) {
        this.processName = processName;
    }

    /**
     * @return procsee_days
     */
    public Integer getProcseeDays() {
        return procseeDays;
    }

    /**
     * @param procseeDays
     */
    public void setProcseeDays(Integer procseeDays) {
        this.procseeDays = procseeDays;
    }

    /**
     * @return is_checked
     */
    public Integer getIsChecked() {
        return isChecked;
    }

    /**
     * @param isChecked
     */
    public void setIsChecked(Integer isChecked) {
        this.isChecked = isChecked;
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
     * @return type_name
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * @param typeName
     */
    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    /**
     * @return pro_file_id
     */
    public Long getProFileId() {
        return proFileId;
    }

    /**
     * @param proFileId
     */
    public void setProFileId(Long proFileId) {
        this.proFileId = proFileId;
    }

    /**
     * @return process_user_id
     */
    public Long getProcessUserId() {
        return processUserId;
    }

    /**
     * @param processUserId
     */
    public void setProcessUserId(Long processUserId) {
        this.processUserId = processUserId;
    }

    /**
     * @return shenuser
     */
    public String getShenuser() {
        return shenuser;
    }

    /**
     * @param shenuser
     */
    public void setShenuser(String shenuser) {
        this.shenuser = shenuser;
    }

    /**
     * @return process_des
     */
    public String getProcessDes() {
        return processDes;
    }

    /**
     * @param processDes
     */
    public void setProcessDes(String processDes) {
        this.processDes = processDes;
    }
}