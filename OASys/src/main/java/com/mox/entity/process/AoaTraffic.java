package com.mox.entity.process;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_traffic`")
public class AoaTraffic {
    @Id
    @Column(name = "`traffic_id`")
    @GeneratedValue(generator = "JDBC")
    private Long trafficId;

    @Column(name = "`depart_name`")
    private String departName;

    @Column(name = "`depart_time`")
    private Date departTime;

    @Column(name = "`reach_name`")
    private String reachName;

    @Column(name = "`seat_type`")
    private String seatType;

    @Column(name = "`traffic_money`")
    private Double trafficMoney;

    @Column(name = "`traffic_name`")
    private String trafficName;

    @Column(name = "`evection_id`")
    private Long evectionId;

    @Column(name = "`user_name`")
    private Long userName;

    /**
     * @return traffic_id
     */
    public Long getTrafficId() {
        return trafficId;
    }

    /**
     * @param trafficId
     */
    public void setTrafficId(Long trafficId) {
        this.trafficId = trafficId;
    }

    /**
     * @return depart_name
     */
    public String getDepartName() {
        return departName;
    }

    /**
     * @param departName
     */
    public void setDepartName(String departName) {
        this.departName = departName;
    }

    /**
     * @return depart_time
     */
    public Date getDepartTime() {
        return departTime;
    }

    /**
     * @param departTime
     */
    public void setDepartTime(Date departTime) {
        this.departTime = departTime;
    }

    /**
     * @return reach_name
     */
    public String getReachName() {
        return reachName;
    }

    /**
     * @param reachName
     */
    public void setReachName(String reachName) {
        this.reachName = reachName;
    }

    /**
     * @return seat_type
     */
    public String getSeatType() {
        return seatType;
    }

    /**
     * @param seatType
     */
    public void setSeatType(String seatType) {
        this.seatType = seatType;
    }

    /**
     * @return traffic_money
     */
    public Double getTrafficMoney() {
        return trafficMoney;
    }

    /**
     * @param trafficMoney
     */
    public void setTrafficMoney(Double trafficMoney) {
        this.trafficMoney = trafficMoney;
    }

    /**
     * @return traffic_name
     */
    public String getTrafficName() {
        return trafficName;
    }

    /**
     * @param trafficName
     */
    public void setTrafficName(String trafficName) {
        this.trafficName = trafficName;
    }

    /**
     * @return evection_id
     */
    public Long getEvectionId() {
        return evectionId;
    }

    /**
     * @param evectionId
     */
    public void setEvectionId(Long evectionId) {
        this.evectionId = evectionId;
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