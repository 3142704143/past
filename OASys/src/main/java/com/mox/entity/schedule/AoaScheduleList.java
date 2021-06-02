package com.mox.entity.schedule;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_schedule_list`")
public class AoaScheduleList {
    @Id
    @Column(name = "`rc_id`")
    @GeneratedValue(generator = "JDBC")
    private Long rcId;

    @Column(name = "`create_time`")
    private Date createTime;

    @Column(name = "`end_time`")
    private Date endTime;

    @Column(name = "`filedescribe`")
    private String filedescribe;

    @Column(name = "`is_remind`")
    private Integer isRemind;

    @Column(name = "`start_time`")
    private Date startTime;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`user_id`")
    private Long userId;

    @Column(name = "`miaoshu`")
    private String miaoshu;

    @Column(name = "`isreminded`")
    private Integer isreminded;

    /**
     * @return rc_id
     */
    public Long getRcId() {
        return rcId;
    }

    /**
     * @param rcId
     */
    public void setRcId(Long rcId) {
        this.rcId = rcId;
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
     * @return filedescribe
     */
    public String getFiledescribe() {
        return filedescribe;
    }

    /**
     * @param filedescribe
     */
    public void setFiledescribe(String filedescribe) {
        this.filedescribe = filedescribe;
    }

    /**
     * @return is_remind
     */
    public Integer getIsRemind() {
        return isRemind;
    }

    /**
     * @param isRemind
     */
    public void setIsRemind(Integer isRemind) {
        this.isRemind = isRemind;
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
     * @return user_id
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * @return miaoshu
     */
    public String getMiaoshu() {
        return miaoshu;
    }

    /**
     * @param miaoshu
     */
    public void setMiaoshu(String miaoshu) {
        this.miaoshu = miaoshu;
    }

    /**
     * @return isreminded
     */
    public Integer getIsreminded() {
        return isreminded;
    }

    /**
     * @param isreminded
     */
    public void setIsreminded(Integer isreminded) {
        this.isreminded = isreminded;
    }
}