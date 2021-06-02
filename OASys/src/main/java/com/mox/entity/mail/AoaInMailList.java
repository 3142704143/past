package com.mox.entity.mail;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_in_mail_list`")
public class AoaInMailList {
    @Id
    @Column(name = "`mail_id`")
    @GeneratedValue(generator = "JDBC")
    private Long mailId;

    @Column(name = "`mail_create_time`")
    private Date mailCreateTime;

    @Column(name = "`mail_file_id`")
    private Long mailFileId;

    @Column(name = "`mail_title`")
    private String mailTitle;

    @Column(name = "`mail_type`")
    private Long mailType;

    @Column(name = "`mail_in_push_user_id`")
    private Long mailInPushUserId;

    @Column(name = "`in_receiver`")
    private String inReceiver;

    @Column(name = "`mail_status_id`")
    private Long mailStatusId;

    @Column(name = "`mail_number_id`")
    private Long mailNumberId;

    @Column(name = "`mail_del`")
    private Integer mailDel;

    @Column(name = "`mail_push`")
    private Integer mailPush;

    @Column(name = "`mail_star`")
    private Integer mailStar;

    @Column(name = "`mail_content`")
    private String mailContent;

    /**
     * @return mail_id
     */
    public Long getMailId() {
        return mailId;
    }

    /**
     * @param mailId
     */
    public void setMailId(Long mailId) {
        this.mailId = mailId;
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
     * @return mail_file_id
     */
    public Long getMailFileId() {
        return mailFileId;
    }

    /**
     * @param mailFileId
     */
    public void setMailFileId(Long mailFileId) {
        this.mailFileId = mailFileId;
    }

    /**
     * @return mail_title
     */
    public String getMailTitle() {
        return mailTitle;
    }

    /**
     * @param mailTitle
     */
    public void setMailTitle(String mailTitle) {
        this.mailTitle = mailTitle;
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
     * @return mail_in_push_user_id
     */
    public Long getMailInPushUserId() {
        return mailInPushUserId;
    }

    /**
     * @param mailInPushUserId
     */
    public void setMailInPushUserId(Long mailInPushUserId) {
        this.mailInPushUserId = mailInPushUserId;
    }

    /**
     * @return in_receiver
     */
    public String getInReceiver() {
        return inReceiver;
    }

    /**
     * @param inReceiver
     */
    public void setInReceiver(String inReceiver) {
        this.inReceiver = inReceiver;
    }

    /**
     * @return mail_status_id
     */
    public Long getMailStatusId() {
        return mailStatusId;
    }

    /**
     * @param mailStatusId
     */
    public void setMailStatusId(Long mailStatusId) {
        this.mailStatusId = mailStatusId;
    }

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
     * @return mail_del
     */
    public Integer getMailDel() {
        return mailDel;
    }

    /**
     * @param mailDel
     */
    public void setMailDel(Integer mailDel) {
        this.mailDel = mailDel;
    }

    /**
     * @return mail_push
     */
    public Integer getMailPush() {
        return mailPush;
    }

    /**
     * @param mailPush
     */
    public void setMailPush(Integer mailPush) {
        this.mailPush = mailPush;
    }

    /**
     * @return mail_star
     */
    public Integer getMailStar() {
        return mailStar;
    }

    /**
     * @param mailStar
     */
    public void setMailStar(Integer mailStar) {
        this.mailStar = mailStar;
    }

    /**
     * @return mail_content
     */
    public String getMailContent() {
        return mailContent;
    }

    /**
     * @param mailContent
     */
    public void setMailContent(String mailContent) {
        this.mailContent = mailContent;
    }
}