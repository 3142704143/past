package com.mox.entity.notice;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_notice_list`")
public class AoaNoticeList {
    @Id
    @Column(name = "`notice_id`")
    @GeneratedValue(generator = "JDBC")
    private Long noticeId;

    @Column(name = "`content`")
    private String content;

    @Column(name = "`is_top`")
    private Integer isTop;

    @Column(name = "`modify_time`")
    private Date modifyTime;

    @Column(name = "`notice_time`")
    private Date noticeTime;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`url`")
    private String url;

    @Column(name = "`user_id`")
    private Long userId;

    /**
     * @return notice_id
     */
    public Long getNoticeId() {
        return noticeId;
    }

    /**
     * @param noticeId
     */
    public void setNoticeId(Long noticeId) {
        this.noticeId = noticeId;
    }

    /**
     * @return content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content
     */
    public void setContent(String content) {
        this.content = content;
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
     * @return notice_time
     */
    public Date getNoticeTime() {
        return noticeTime;
    }

    /**
     * @param noticeTime
     */
    public void setNoticeTime(Date noticeTime) {
        this.noticeTime = noticeTime;
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