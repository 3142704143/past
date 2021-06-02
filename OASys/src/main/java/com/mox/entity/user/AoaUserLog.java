package com.mox.entity.user;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_user_log`")
public class AoaUserLog {
    @Id
    @Column(name = "`log_id`")
    @GeneratedValue(generator = "JDBC")
    private Long logId;

    @Column(name = "`ip_addr`")
    private String ipAddr;

    @Column(name = "`log_time`")
    private Date logTime;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`url`")
    private String url;

    @Column(name = "`user_id`")
    private Long userId;

    /**
     * @return log_id
     */
    public Long getLogId() {
        return logId;
    }

    /**
     * @param logId
     */
    public void setLogId(Long logId) {
        this.logId = logId;
    }

    /**
     * @return ip_addr
     */
    public String getIpAddr() {
        return ipAddr;
    }

    /**
     * @param ipAddr
     */
    public void setIpAddr(String ipAddr) {
        this.ipAddr = ipAddr;
    }

    /**
     * @return log_time
     */
    public Date getLogTime() {
        return logTime;
    }

    /**
     * @param logTime
     */
    public void setLogTime(Date logTime) {
        this.logTime = logTime;
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
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
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
}