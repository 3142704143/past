package com.mox.service.user;

import java.util.List;

import com.mox.base.BaseService;
import com.mox.entity.user.AoaUserLoginRecord;

public interface AoaUserLoginRecordService extends BaseService<AoaUserLoginRecord> {
	List<AoaUserLoginRecord> queryAll();
	List<AoaUserLoginRecord> queryBySearch(String name);
}
