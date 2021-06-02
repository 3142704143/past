package com.mox.entity.file;

import javax.persistence.*;

@Table(name = "`aoa_file_path`")
public class AoaFilePath {
    @Id
    @Column(name = "`path_id`")
    @GeneratedValue(generator = "JDBC")
    private Long pathId;

    @Column(name = "`parent_id`")
    private Long parentId;

    @Column(name = "`path_name`")
    private String pathName;

    @Column(name = "`path_user_id`")
    private Long pathUserId;

    @Column(name = "`path_istrash`")
    private Long pathIstrash;

    /**
     * @return path_id
     */
    public Long getPathId() {
        return pathId;
    }

    /**
     * @param pathId
     */
    public void setPathId(Long pathId) {
        this.pathId = pathId;
    }

    /**
     * @return parent_id
     */
    public Long getParentId() {
        return parentId;
    }

    /**
     * @param parentId
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    /**
     * @return path_name
     */
    public String getPathName() {
        return pathName;
    }

    /**
     * @param pathName
     */
    public void setPathName(String pathName) {
        this.pathName = pathName;
    }

    /**
     * @return path_user_id
     */
    public Long getPathUserId() {
        return pathUserId;
    }

    /**
     * @param pathUserId
     */
    public void setPathUserId(Long pathUserId) {
        this.pathUserId = pathUserId;
    }

    /**
     * @return path_istrash
     */
    public Long getPathIstrash() {
        return pathIstrash;
    }

    /**
     * @param pathIstrash
     */
    public void setPathIstrash(Long pathIstrash) {
        this.pathIstrash = pathIstrash;
    }
}