package com.mox.entity.note;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_attachment_list`")
public class AoaAttachmentList {
    @Id
    @Column(name = "`attachment_id`")
    @GeneratedValue(generator = "JDBC")
    private Long attachmentId;

    @Column(name = "`attachment_name`")
    private String attachmentName;

    @Column(name = "`attachment_path`")
    private String attachmentPath;

    @Column(name = "`attachment_shuffix`")
    private String attachmentShuffix;

    @Column(name = "`attachment_size`")
    private String attachmentSize;

    @Column(name = "`attachment_type`")
    private String attachmentType;

    @Column(name = "`model`")
    private String model;

    @Column(name = "`upload_time`")
    private Date uploadTime;

    @Column(name = "`user_id`")
    private String userId;

    /**
     * @return attachment_id
     */
    public Long getAttachmentId() {
        return attachmentId;
    }

    /**
     * @param attachmentId
     */
    public void setAttachmentId(Long attachmentId) {
        this.attachmentId = attachmentId;
    }

    /**
     * @return attachment_name
     */
    public String getAttachmentName() {
        return attachmentName;
    }

    /**
     * @param attachmentName
     */
    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName;
    }

    /**
     * @return attachment_path
     */
    public String getAttachmentPath() {
        return attachmentPath;
    }

    /**
     * @param attachmentPath
     */
    public void setAttachmentPath(String attachmentPath) {
        this.attachmentPath = attachmentPath;
    }

    /**
     * @return attachment_shuffix
     */
    public String getAttachmentShuffix() {
        return attachmentShuffix;
    }

    /**
     * @param attachmentShuffix
     */
    public void setAttachmentShuffix(String attachmentShuffix) {
        this.attachmentShuffix = attachmentShuffix;
    }

    /**
     * @return attachment_size
     */
    public String getAttachmentSize() {
        return attachmentSize;
    }

    /**
     * @param attachmentSize
     */
    public void setAttachmentSize(String attachmentSize) {
        this.attachmentSize = attachmentSize;
    }

    /**
     * @return attachment_type
     */
    public String getAttachmentType() {
        return attachmentType;
    }

    /**
     * @param attachmentType
     */
    public void setAttachmentType(String attachmentType) {
        this.attachmentType = attachmentType;
    }

    /**
     * @return model
     */
    public String getModel() {
        return model;
    }

    /**
     * @param model
     */
    public void setModel(String model) {
        this.model = model;
    }

    /**
     * @return upload_time
     */
    public Date getUploadTime() {
        return uploadTime;
    }

    /**
     * @param uploadTime
     */
    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    /**
     * @return user_id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }
}