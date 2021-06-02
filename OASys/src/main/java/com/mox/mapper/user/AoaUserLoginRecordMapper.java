package com.mox.mapper.user;

import java.util.List;

import com.mox.entity.user.AoaUserLoginRecord;
import tk.mybatis.mapper.common.Mapper;

public interface AoaUserLoginRecordMapper extends Mapper<AoaUserLoginRecord> {
	List<AoaUserLoginRecord> queryAll();
	List<AoaUserLoginRecord> queryBySearch(String name);
}