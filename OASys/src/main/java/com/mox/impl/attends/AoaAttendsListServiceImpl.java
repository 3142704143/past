package com.mox.impl.attends;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mox.base.BaseServiceImpl;
import com.mox.entity.attends.AoaAttendsList;
import com.mox.mapper.attends.AoaAttendsListMapper;
import com.mox.service.attends.AoaAttendsListService;
@Service
public class AoaAttendsListServiceImpl extends BaseServiceImpl<AoaAttendsListMapper, AoaAttendsList>
		implements AoaAttendsListService {

	public List<AoaAttendsList> myselect(String name) {
		return m.myselect(name);
	}

	public List<AoaAttendsList> selectAllMyattends(Integer id) {
		return m.selectAllMyattends(id);
	}
}
