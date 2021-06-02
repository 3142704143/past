package com.mox.entity.attends;

import java.util.Date;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import com.mox.entity.system.AoaStatusList;
import com.mox.entity.system.AoaTypeList;

@Table(name = "`aoa_attends_list`")
public class AoaAttendsList {
    @Id
    @Column(name = "`attends_id`")
    @GeneratedValue(generator = "JDBC")
    private Long attendsId;

    @Column(name = "`attends_ip`")
    private String attendsIp;

    @Column(name = "`attends_remark`")
    private String attendsRemark;

    @Column(name = "`attends_time`")
    private Date attendsTime;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`attends_user_id`")
    private Long attendsUserId;

    @Column(name = "`attend_hmtime`")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String attendHmtime;

    @Column(name = "`week_ofday`")
    private String weekOfday;

    @Column(name = "`holiday_days`")
    private Double holidayDays;

    @Column(name = "`holiday_start`")
    private Date holidayStart;
    
    @Transient
    private String username;
    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	//配置考勤表和状态表、类型表的一对一关系
	private AoaStatusList status;
	private AoaTypeList type;
	public AoaStatusList getStatus() {
		return status;
	}
	public void setStatus(AoaStatusList status) {
		this.status = status;
	}
	public AoaTypeList getType() {
		return type;
	}

	public void setType(AoaTypeList type) {
		this.type = type;
	}

	/**
     * @return attends_id
     */
    public Long getAttendsId() {
        return attendsId;
    }

    /**
     * @param attendsId
     */
    public void setAttendsId(Long attendsId) {
        this.attendsId = attendsId;
    }

    /**
     * @return attends_ip
     */
    public String getAttendsIp() {
        return attendsIp;
    }

    /**
     * @param attendsIp
     */
    public void setAttendsIp(String attendsIp) {
        this.attendsIp = attendsIp;
    }

    /**
     * @return attends_remark
     */
    public String getAttendsRemark() {
        return attendsRemark;
    }

    /**
     * @param attendsRemark
     */
    public void setAttendsRemark(String attendsRemark) {
        this.attendsRemark = attendsRemark;
    }

    /**
     * @return attends_time
     */
    public Date getAttendsTime() {
        return attendsTime;
    }

    /**
     * @param attendsTime
     */
    public void setAttendsTime(Date attendsTime) {
        this.attendsTime = attendsTime;
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
     * @return type_id
     */
    public Long getTypeId() {
        return typeId;
    }

    /**
     * @param typeId
     */
    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    /**
     * @return attends_user_id
     */
    public Long getAttendsUserId() {
        return attendsUserId;
    }

    /**
     * @param attendsUserId
     */
    public void setAttendsUserId(Long attendsUserId) {
        this.attendsUserId = attendsUserId;
    }

    /**
     * @return attend_hmtime
     */
    public String getAttendHmtime() {
        return attendHmtime;
    }

    /**
     * @param attendHmtime
     */
    public void setAttendHmtime(String attendHmtime) {
        this.attendHmtime = attendHmtime;
    }

    /**
     * @return week_ofday
     */
    public String getWeekOfday() {
        return weekOfday;
    }

    /**
     * @param weekOfday
     */
    public void setWeekOfday(String weekOfday) {
        this.weekOfday = weekOfday;
    }

    /**
     * @return holiday_days
     */
    public Double getHolidayDays() {
        return holidayDays;
    }

    /**
     * @param holidayDays
     */
    public void setHolidayDays(Double holidayDays) {
        this.holidayDays = holidayDays;
    }

    /**
     * @return holiday_start
     */
    public Date getHolidayStart() {
        return holidayStart;
    }

    /**
     * @param holidayStart
     */
    public void setHolidayStart(Date holidayStart) {
        this.holidayStart = holidayStart;
    }

	@Override
	public String toString() {
		return "AoaAttendsList [attendsId=" + attendsId + ", attendsIp=" + attendsIp + ", attendsRemark="
				+ attendsRemark + ", attendsTime=" + attendsTime + ", statusId=" + statusId + ", typeId=" + typeId
				+ ", attendsUserId=" + attendsUserId + ", attendHmtime=" + attendHmtime + ", weekOfday=" + weekOfday
				+ ", holidayDays=" + holidayDays + ", holidayStart=" + holidayStart + ", username=" + username
				+ ", status=" + status + ", type=" + type + "]";
	}
    
}