package com.mox.entity.process;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_stay`")
public class AoaStay {
    @Id
    @Column(name = "`stay_id`")
    @GeneratedValue(generator = "JDBC")
    private Long stayId;

    @Column(name = "`day`")
    private Integer day;

    @Column(name = "`hotel_name`")
    private String hotelName;

    @Column(name = "`leave_time`")
    private Date leaveTime;

    @Column(name = "`stay_city`")
    private String stayCity;

    @Column(name = "`stay_money`")
    private Double stayMoney;

    @Column(name = "`stay_time`")
    private Date stayTime;

    @Column(name = "`evemoney_id`")
    private Long evemoneyId;

    @Column(name = "`user_name`")
    private Long userName;

    /**
     * @return stay_id
     */
    public Long getStayId() {
        return stayId;
    }

    /**
     * @param stayId
     */
    public void setStayId(Long stayId) {
        this.stayId = stayId;
    }

    /**
     * @return day
     */
    public Integer getDay() {
        return day;
    }

    /**
     * @param day
     */
    public void setDay(Integer day) {
        this.day = day;
    }

    /**
     * @return hotel_name
     */
    public String getHotelName() {
        return hotelName;
    }

    /**
     * @param hotelName
     */
    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    /**
     * @return leave_time
     */
    public Date getLeaveTime() {
        return leaveTime;
    }

    /**
     * @param leaveTime
     */
    public void setLeaveTime(Date leaveTime) {
        this.leaveTime = leaveTime;
    }

    /**
     * @return stay_city
     */
    public String getStayCity() {
        return stayCity;
    }

    /**
     * @param stayCity
     */
    public void setStayCity(String stayCity) {
        this.stayCity = stayCity;
    }

    /**
     * @return stay_money
     */
    public Double getStayMoney() {
        return stayMoney;
    }

    /**
     * @param stayMoney
     */
    public void setStayMoney(Double stayMoney) {
        this.stayMoney = stayMoney;
    }

    /**
     * @return stay_time
     */
    public Date getStayTime() {
        return stayTime;
    }

    /**
     * @param stayTime
     */
    public void setStayTime(Date stayTime) {
        this.stayTime = stayTime;
    }

    /**
     * @return evemoney_id
     */
    public Long getEvemoneyId() {
        return evemoneyId;
    }

    /**
     * @param evemoneyId
     */
    public void setEvemoneyId(Long evemoneyId) {
        this.evemoneyId = evemoneyId;
    }

    /**
     * @return user_name
     */
    public Long getUserName() {
        return userName;
    }

    /**
     * @param userName
     */
    public void setUserName(Long userName) {
        this.userName = userName;
    }
}