package com.mox.entity.mail;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_mailnumber`")
public class AoaMailnumber {
    @Id
    @Column(name = "`mail_number_id`")
    @GeneratedValue(generator = "JDBC")
    private Long mailNumberId;

    @Column(name = "`mail_account`")
    private String mailAccount;

    @Column(name = "`mail_create_time`")
    private Date mailCreateTime;

    @Column(name = "`mail_des`")
    private String mailDes;

    @Column(name = "`mail_type`")
    private Long mailType;

    @Column(name = "`mail_user_name`")
    private String mailUserName;

    @Column(name = "`password`")
    private String password;

    @Column(name = "`status`")
    private Long status;

    @Column(name = "`mail_num_user_id`")
    private Long mailNumUserId;

    /**
     * @return mail_number_id
     */
    public Long getMailNumberId() {
        return mailNumberId;
    }

    /**
     * @param mailNumberId
     */
    public void setMailNumberId(Long mailNumberId) {
        this.mailNumberId = mailNumberId;
    }

    /**
     * @return mail_account
     */
    public String getMailAccount() {
        return mailAccount;
    }

    /**
     * @param mailAccount
     */
    public void setMailAccount(String mailAccount) {
        this.mailAccount = mailAccount;
    }

    /**
     * @return mail_create_time
     */
    public Date getMailCreateTime() {
        return mailCreateTime;
    }

    /**
     * @param mailCreateTime
     */
    public void setMailCreateTime(Date mailCreateTime) {
        this.mailCreateTime = mailCreateTime;
    }

    /**
     * @return mail_des
     */
    public String getMailDes() {
        return mailDes;
    }

    /**
     * @param mailDes
     */
    public void setMailDes(String mailDes) {
        this.mailDes = mailDes;
    }

    /**
     * @return mail_type
     */
    public Long getMailType() {
        return mailType;
    }

    /**
     * @param mailType
     */
    public void setMailType(Long mailType) {
        this.mailType = mailType;
    }

    /**
     * @return mail_user_name
     */
    public String getMailUserName() {
        return mailUserName;
    }

    /**
     * @param mailUserName
     */
    public void setMailUserName(String mailUserName) {
        this.mailUserName = mailUserName;
    }

    /**
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return status
     */
    public Long getStatus() {
        return status;
    }

    /**
     * @param status
     */
    public void setStatus(Long status) {
        this.status = status;
    }

    /**
     * @return mail_num_user_id
     */
    public Long getMailNumUserId() {
        return mailNumUserId;
    }

    /**
     * @param mailNumUserId
     */
    public void setMailNumUserId(Long mailNumUserId) {
        this.mailNumUserId = mailNumUserId;
    }
}