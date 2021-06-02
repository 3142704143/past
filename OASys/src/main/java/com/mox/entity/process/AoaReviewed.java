package com.mox.entity.process;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_reviewed`")
public class AoaReviewed {
    @Id
    @Column(name = "`reviewed_id`")
    @GeneratedValue(generator = "JDBC")
    private Long reviewedId;

    @Column(name = "`advice`")
    private String advice;

    @Column(name = "`reviewed_time`")
    private Date reviewedTime;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`pro_id`")
    private Long proId;

    @Column(name = "`user_id`")
    private Long userId;

    @Column(name = "`del`")
    private Integer del;

    /**
     * @return reviewed_id
     */
    public Long getReviewedId() {
        return reviewedId;
    }

    /**
     * @param reviewedId
     */
    public void setReviewedId(Long reviewedId) {
        this.reviewedId = reviewedId;
    }

    /**
     * @return advice
     */
    public String getAdvice() {
        return advice;
    }

    /**
     * @param advice
     */
    public void setAdvice(String advice) {
        this.advice = advice;
    }

    /**
     * @return reviewed_time
     */
    public Date getReviewedTime() {
        return reviewedTime;
    }

    /**
     * @param reviewedTime
     */
    public void setReviewedTime(Date reviewedTime) {
        this.reviewedTime = reviewedTime;
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
     * @return pro_id
     */
    public Long getProId() {
        return proId;
    }

    /**
     * @param proId
     */
    public void setProId(Long proId) {
        this.proId = proId;
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

    /**
     * @return del
     */
    public Integer getDel() {
        return del;
    }

    /**
     * @param del
     */
    public void setDel(Integer del) {
        this.del = del;
    }
}