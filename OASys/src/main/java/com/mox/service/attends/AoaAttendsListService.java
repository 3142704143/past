package com.mox.service.attends;

import java.util.List;

import com.mox.base.BaseService;
import com.mox.entity.attends.AoaAttendsList;

public interface AoaAttendsListService extends BaseService<AoaAttendsList> {
	List<AoaAttendsList> myselect(String name);
	
	List<AoaAttendsList> selectAllMyattends(Integer id);
}
