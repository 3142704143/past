package com.mox.entity.file;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_file_list`")
public class AoaFileList {
    @Id
    @Column(name = "`file_id`")
    @GeneratedValue(generator = "JDBC")
    private Long fileId;

    @Column(name = "`file_name`")
    private String fileName;

    @Column(name = "`file_path`")
    private String filePath;

    @Column(name = "`file_shuffix`")
    private String fileShuffix;

    @Column(name = "`content_type`")
    private String contentType;

    @Column(name = "`model`")
    private String model;

    @Column(name = "`path_id`")
    private Long pathId;

    @Column(name = "`size`")
    private Long size;

    @Column(name = "`upload_time`")
    private Date uploadTime;

    @Column(name = "`file_user_id`")
    private Long fileUserId;

    @Column(name = "`file_istrash`")
    private Long fileIstrash;

    @Column(name = "`file_isshare`")
    private Long fileIsshare;

    /**
     * @return file_id
     */
    public Long getFileId() {
        return fileId;
    }

    /**
     * @param fileId
     */
    public void setFileId(Long fileId) {
        this.fileId = fileId;
    }

    /**
     * @return file_name
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * @param fileName
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * @return file_path
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * @param filePath
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * @return file_shuffix
     */
    public String getFileShuffix() {
        return fileShuffix;
    }

    /**
     * @param fileShuffix
     */
    public void setFileShuffix(String fileShuffix) {
        this.fileShuffix = fileShuffix;
    }

    /**
     * @return content_type
     */
    public String getContentType() {
        return contentType;
    }

    /**
     * @param contentType
     */
    public void setContentType(String contentType) {
        this.contentType = contentType;
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
     * @return size
     */
    public Long getSize() {
        return size;
    }

    /**
     * @param size
     */
    public void setSize(Long size) {
        this.size = size;
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
     * @return file_user_id
     */
    public Long getFileUserId() {
        return fileUserId;
    }

    /**
     * @param fileUserId
     */
    public void setFileUserId(Long fileUserId) {
        this.fileUserId = fileUserId;
    }

    /**
     * @return file_istrash
     */
    public Long getFileIstrash() {
        return fileIstrash;
    }

    /**
     * @param fileIstrash
     */
    public void setFileIstrash(Long fileIstrash) {
        this.fileIstrash = fileIstrash;
    }

    /**
     * @return file_isshare
     */
    public Long getFileIsshare() {
        return fileIsshare;
    }

    /**
     * @param fileIsshare
     */
    public void setFileIsshare(Long fileIsshare) {
        this.fileIsshare = fileIsshare;
    }
}