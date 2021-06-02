package com.mox.entity.director;

import javax.persistence.*;

@Table(name = "`aoa_director`")
public class AoaDirector {
    @Id
    @Column(name = "`director_id`")
    @GeneratedValue(generator = "JDBC")
    private Long directorId;

    @Column(name = "`address`")
    private String address;

    @Column(name = "`company_number`")
    private String companyNumber;

    @Column(name = "`email`")
    private String email;

    @Column(name = "`image_path`")
    private Integer imagePath;

    @Column(name = "`phone_number`")
    private String phoneNumber;

    @Column(name = "`pinyin`")
    private String pinyin;

    @Column(name = "`remark`")
    private String remark;

    @Column(name = "`sex`")
    private String sex;

    @Column(name = "`user_name`")
    private String userName;

    @Column(name = "`user_id`")
    private Long userId;

    @Column(name = "`companyname`")
    private String companyname;

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
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return company_number
     */
    public String getCompanyNumber() {
        return companyNumber;
    }

    /**
     * @param companyNumber
     */
    public void setCompanyNumber(String companyNumber) {
        this.companyNumber = companyNumber;
    }

    /**
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return image_path
     */
    public Integer getImagePath() {
        return imagePath;
    }

    /**
     * @param imagePath
     */
    public void setImagePath(Integer imagePath) {
        this.imagePath = imagePath;
    }

    /**
     * @return phone_number
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * @param phoneNumber
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    /**
     * @return pinyin
     */
    public String getPinyin() {
        return pinyin;
    }

    /**
     * @param pinyin
     */
    public void setPinyin(String pinyin) {
        this.pinyin = pinyin;
    }

    /**
     * @return remark
     */
    public String getRemark() {
        return remark;
    }

    /**
     * @param remark
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * @return user_name
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName
     */
    public void setUserName(String userName) {
        this.userName = userName;
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
     * @return companyname
     */
    public String getCompanyname() {
        return companyname;
    }

    /**
     * @param companyname
     */
    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }
}