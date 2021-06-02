package com.mox.entity.task;

import javax.persistence.*;

@Table(name = "`aoa_task_user`")
public class AoaTaskUser {
    @Id
    @Column(name = "`pk_id`")
    @GeneratedValue(generator = "JDBC")
    private Long pkId;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`task_id`")
    private Long taskId;

    @Column(name = "`task_recive_user_id`")
    private Long taskReciveUserId;

    /**
     * @return pk_id
     */
    public Long getPkId() {
        return pkId;
    }

    /**
     * @param pkId
     */
    public void setPkId(Long pkId) {
        this.pkId = pkId;
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
     * @return task_recive_user_id
     */
    public Long getTaskReciveUserId() {
        return taskReciveUserId;
    }

    /**
     * @param taskReciveUserId
     */
    public void setTaskReciveUserId(Long taskReciveUserId) {
        this.taskReciveUserId = taskReciveUserId;
    }
}