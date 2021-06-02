package com.mox.entity.comment;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_comment_list`")
public class AoaCommentList {
    @Id
    @Column(name = "`comment_id`")
    @GeneratedValue(generator = "JDBC")
    private Long commentId;

    @Column(name = "`comment`")
    private String comment;

    @Column(name = "`time`")
    private Date time;

    @Column(name = "`comment_user_id`")
    private Long commentUserId;

    @Column(name = "`reply_id`")
    private Long replyId;

    /**
     * @return comment_id
     */
    public Long getCommentId() {
        return commentId;
    }

    /**
     * @param commentId
     */
    public void setCommentId(Long commentId) {
        this.commentId = commentId;
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
     * @return time
     */
    public Date getTime() {
        return time;
    }

    /**
     * @param time
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * @return comment_user_id
     */
    public Long getCommentUserId() {
        return commentUserId;
    }

    /**
     * @param commentUserId
     */
    public void setCommentUserId(Long commentUserId) {
        this.commentUserId = commentUserId;
    }

    /**
     * @return reply_id
     */
    public Long getReplyId() {
        return replyId;
    }

    /**
     * @param replyId
     */
    public void setReplyId(Long replyId) {
        this.replyId = replyId;
    }
}