package com.mox.entity.director;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_director_users`")
public class AoaDirectorUsers {
    @Id
    @Column(name = "`director_users_id`")
    @GeneratedValue(generator = "JDBC")
    private Long directorUsersId;

    @Column(name = "`catelog_name`")
    private String catelogName;

    @Column(name = "`is_handle`")
    private Integer isHandle;

    @Column(name = "`director_id`")
    private Long directorId;

    @Column(name = "`user_id`")
    private Long userId;

    @Column(name = "`share_user_id`")
    private Long shareUserId;

    @Column(name = "`sharetime`")
    private Date sharetime;

    /**
     * @return director_users_id
     */
    public Long getDirectorUsersId() {
        return directorUsersId;
    }

    /**
     * @param directorUsersId
     */
    public void setDirectorUsersId(Long directorUsersId) {
        this.directorUsersId = directorUsersId;
    }

    /**
     * @return catelog_name
     */
    public String getCatelogName() {
        return catelogName;
    }

    /**
     * @param catelogName
     */
    public void setCatelogName(String catelogName) {
        this.catelogName = catelogName;
    }

    /**
     * @return is_handle
     */
    public Integer getIsHandle() {
        return isHandle;
    }

    /**
     * @param isHandle
     */
    public void setIsHandle(Integer isHandle) {
        this.isHandle = isHandle;
    }

    /**
     * @return director_id
     */
    public Long getDirectorId() {
        return directorId;
    }

    /**
     * @param directorId
     */
    public void setDirectorId(Long directorId) {
        this.directorId = directorId;
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
     * @return share_user_id
     */
    public Long getShareUserId() {
        return shareUserId;
    }

    /**
     * @param shareUserId
     */
    public void setShareUserId(Long shareUserId) {
        this.shareUserId = shareUserId;
    }

    /**
     * @return sharetime
     */
    public Date getSharetime() {
        return sharetime;
    }

    /**
     * @param sharetime
     */
    public void setSharetime(Date sharetime) {
        this.sharetime = sharetime;
    }
}