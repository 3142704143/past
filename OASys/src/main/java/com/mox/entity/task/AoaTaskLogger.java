package com.mox.entity.task;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_task_logger`")
public class AoaTaskLogger {
    @Id
    @Column(name = "`logger_id`")
    @GeneratedValue(generator = "JDBC")
    private Long loggerId;

    @Column(name = "`create_time`")
    private Date createTime;

    @Column(name = "`logger_ticking`")
    private String loggerTicking;

    @Column(name = "`task_id`")
    private Long taskId;

    @Column(name = "`username`")
    private String username;

    @Column(name = "`logger_statusid`")
    private Integer loggerStatusid;

    /**
     * @return logger_id
     */
    public Long getLoggerId() {
        return loggerId;
    }

    /**
     * @param loggerId
     */
    public void setLoggerId(Long loggerId) {
        this.loggerId = loggerId;
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
     * @return logger_ticking
     */
    public String getLoggerTicking() {
        return loggerTicking;
    }

    /**
     * @param loggerTicking
     */
    public void setLoggerTicking(String loggerTicking) {
        this.loggerTicking = loggerTicking;
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
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return logger_statusid
     */
    public Integer getLoggerStatusid() {
        return loggerStatusid;
    }

    /**
     * @param loggerStatusid
     */
    public void setLoggerStatusid(Integer loggerStatusid) {
        this.loggerStatusid = loggerStatusid;
    }
}