package com.mox.entity.task;

import java.util.Date;
import javax.persistence.*;

import com.mox.entity.system.AoaStatusList;
import com.mox.entity.system.AoaTypeList;
import com.mox.entity.user.AoaUser;

@Table(name = "`aoa_task_list`")
public class AoaTaskList {
    @Id
    @Column(name = "`task_id`")
    @GeneratedValue(generator = "JDBC")
    private Long taskId;

    @Column(name = "`comment`")
    private String comment;

    @Column(name = "`end_time`")
    private Date endTime;

    @Column(name = "`is_cancel`")
    private Integer isCancel;

    @Column(name = "`is_top`")
    private Integer isTop;

    @Column(name = "`modify_time`")
    private Date modifyTime;

    @Column(name = "`publish_time`")
    private Date publishTime;

    @Column(name = "`star_time`")
    private Date starTime;

    @Column(name = "`status_id`")
    private Integer statusId;

    @Column(name = "`task_describe`")
    private String taskDescribe;

    @Column(name = "`ticking`")
    private String ticking;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`task_push_user_id`")
    private Long taskPushUserId;

    @Column(name = "`reciverlist`")
    private String reciverlist;

    
    private AoaStatusList statuslist;
    public AoaStatusList getStatuslist() {
		return statuslist;
	}
	public void setStatuslist(AoaStatusList statuslist) {
		this.statuslist = statuslist;
	}
	
	private AoaUser user;
	public AoaUser getUser() {
		return user;
	}
	public void setUser(AoaUser user) {
		this.user = user;
	}
	
	private AoaTypeList typelist;
	public AoaTypeList getTypelist() {
		return typelist;
	}
	public void setTypelist(AoaTypeList typelist) {
		this.typelist = typelist;
	}
	
	/**
     * @return task_id
     */
    public Long getTaskId() {
        return taskId;
    }

    /**
     * @param taskId
     */
    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    /**
     * @return comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment
     */
    public void setComment(String comment) {
        this.comment = comment;
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
     * @return is_cancel
     */
    public Integer getIsCancel() {
        return isCancel;
    }

    /**
     * @param isCancel
     */
    public void setIsCancel(Integer isCancel) {
        this.isCancel = isCancel;
    }

    /**
     * @return is_top
     */
    public Integer getIsTop() {
        return isTop;
    }

    /**
     * @param isTop
     */
    public void setIsTop(Integer isTop) {
        this.isTop = isTop;
    }

    /**
     * @return modify_time
     */
    public Date getModifyTime() {
        return modifyTime;
    }

    /**
     * @param modifyTime
     */
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    /**
     * @return publish_time
     */
    public Date getPublishTime() {
        return publishTime;
    }

    /**
     * @param publishTime
     */
    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    /**
     * @return star_time
     */
    public Date getStarTime() {
        return starTime;
    }

    /**
     * @param starTime
     */
    public void setStarTime(Date starTime) {
        this.starTime = starTime;
    }

    /**
     * @return status_id
     */
    public Integer getStatusId() {
        return statusId;
    }

    /**
     * @param statusId
     */
    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    /**
     * @return task_describe
     */
    public String getTaskDescribe() {
        return taskDescribe;
    }

    /**
     * @param taskDescribe
     */
    public void setTaskDescribe(String taskDescribe) {
        this.taskDescribe = taskDescribe;
    }

    /**
     * @return ticking
     */
    public String getTicking() {
        return ticking;
    }

    /**
     * @param ticking
     */
    public void setTicking(String ticking) {
        this.ticking = ticking;
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
     * @return task_push_user_id
     */
    public Long getTaskPushUserId() {
        return taskPushUserId;
    }

    /**
     * @param taskPushUserId
     */
    public void setTaskPushUserId(Long taskPushUserId) {
        this.taskPushUserId = taskPushUserId;
    }

    /**
     * @return reciverlist
     */
    public String getReciverlist() {
        return reciverlist;
    }

    /**
     * @param reciverlist
     */
    public void setReciverlist(String reciverlist) {
        this.reciverlist = reciverlist;
    }
}