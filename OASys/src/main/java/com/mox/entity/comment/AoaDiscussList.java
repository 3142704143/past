package com.mox.entity.comment;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_discuss_list`")
public class AoaDiscussList {
    @Id
    @Column(name = "`discuss_id`")
    @GeneratedValue(generator = "JDBC")
    private Long discussId;

    @Column(name = "`attachment_id`")
    private Integer attachmentId;

    @Column(name = "`create_time`")
    private Date createTime;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`visit_num`")
    private Integer visitNum;

    @Column(name = "`discuss_user_id`")
    private Long discussUserId;

    @Column(name = "`vote_id`")
    private Long voteId;

    @Column(name = "`modify_time`")
    private Date modifyTime;

    @Column(name = "`content`")
    private String content;

    /**
     * @return discuss_id
     */
    public Long getDiscussId() {
        return discussId;
    }

    /**
     * @param discussId
     */
    public void setDiscussId(Long discussId) {
        this.discussId = discussId;
    }

    /**
     * @return attachment_id
     */
    public Integer getAttachmentId() {
        return attachmentId;
    }

    /**
     * @param attachmentId
     */
    public void setAttachmentId(Integer attachmentId) {
        this.attachmentId = attachmentId;
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
     * @return visit_num
     */
    public Integer getVisitNum() {
        return visitNum;
    }

    /**
     * @param visitNum
     */
    public void setVisitNum(Integer visitNum) {
        this.visitNum = visitNum;
    }

    /**
     * @return discuss_user_id
     */
    public Long getDiscussUserId() {
        return discussUserId;
    }

    /**
     * @param discussUserId
     */
    public void setDiscussUserId(Long discussUserId) {
        this.discussUserId = discussUserId;
    }

    /**
     * @return vote_id
     */
    public Long getVoteId() {
        return voteId;
    }

    /**
     * @param voteId
     */
    public void setVoteId(Long voteId) {
        this.voteId = voteId;
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
}