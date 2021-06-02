package com.mox.entity.user;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_user_login_record`")
public class AoaUserLoginRecord {
    @Id
    @Column(name = "`record_id`")
    @GeneratedValue(generator = "JDBC")
    private Long recordId;

    @Column(name = "`browser`")
    private String browser;

    @Column(name = "`ip_addr`")
    private String ipAddr;

    @Column(name = "`login_time`")
    private Date loginTime;

    @Column(name = "`session_id`")
    private String sessionId;

    @Column(name = "`user_id`")
    private Long userId;

    //自定义属性
    @Transient
    private String userName;
    public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
     * @return record_id
     */
    public Long getRecordId() {
        return recordId;
    }

    /**
     * @param recordId
     */
    public void setRecordId(Long recordId) {
        this.recordId = recordId;
    }

    /**
     * @return browser
     */
    public String getBrowser() {
        return browser;
    }

    /**
     * @param browser
     */
    public void setBrowser(String browser) {
        this.browser = browser;
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
     * @return login_time
     */
    public Date getLoginTime() {
        return loginTime;
    }

    /**
     * @param loginTime
     */
    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    /**
     * @return session_id
     */
    public String getSessionId() {
        return sessionId;
    }

    /**
     * @param sessionId
     */
    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
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