package com.mox.impl.user;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mox.base.BaseServiceImpl;
import com.mox.entity.user.AoaUserLoginRecord;
import com.mox.mapper.user.AoaUserLoginRecordMapper;
import com.mox.service.user.AoaUserLoginRecordService;
@Service
public class AoaUserLoginRecordServiceImpl extends BaseServiceImpl<AoaUserLoginRecordMapper, AoaUserLoginRecord>
		implements AoaUserLoginRecordService {

	public List<AoaUserLoginRecord> queryAll() {
		return m.queryAll();
	}

	public List<AoaUserLoginRecord> queryBySearch(String name) {
		return m.queryBySearch(name);
	}

}
