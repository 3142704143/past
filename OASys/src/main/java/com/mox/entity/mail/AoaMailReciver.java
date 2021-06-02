package com.mox.entity.mail;

import javax.persistence.*;

@Table(name = "`aoa_mail_reciver`")
public class AoaMailReciver {
    @Id
    @Column(name = "`pk_id`")
    @GeneratedValue(generator = "JDBC")
    private Long pkId;

    @Column(name = "`is_read`")
    private Integer isRead;

    @Column(name = "`mail_id`")
    private Long mailId;

    @Column(name = "`mail_reciver_id`")
    private Long mailReciverId;

    @Column(name = "`is_star`")
    private Integer isStar;

    @Column(name = "`is_del`")
    private Integer isDel;

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
     * @return is_read
     */
    public Integer getIsRead() {
        return isRead;
    }

    /**
     * @param isRead
     */
    public void setIsRead(Integer isRead) {
        this.isRead = isRead;
    }

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
     * @return mail_reciver_id
     */
    public Long getMailReciverId() {
        return mailReciverId;
    }

    /**
     * @param mailReciverId
     */
    public void setMailReciverId(Long mailReciverId) {
        this.mailReciverId = mailReciverId;
    }

    /**
     * @return is_star
     */
    public Integer getIsStar() {
        return isStar;
    }

    /**
     * @param isStar
     */
    public void setIsStar(Integer isStar) {
        this.isStar = isStar;
    }

    /**
     * @return is_del
     */
    public Integer getIsDel() {
        return isDel;
    }

    /**
     * @param isDel
     */
    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }
}