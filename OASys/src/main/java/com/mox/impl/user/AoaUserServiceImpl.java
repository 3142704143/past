package com.mox.impl.user;

import java.util.List;

import org.springframework.stereotype.Service;
import com.mox.base.BaseServiceImpl;
import com.mox.entity.user.AoaUser;
import com.mox.mapper.user.AoaUserMapper;
import com.mox.service.user.AoaUserService;

@Service
public class AoaUserServiceImpl extends BaseServiceImpl<AoaUserMapper, AoaUser> implements AoaUserService{

	public AoaUser queryOne(AoaUser u) {
		return m.queryOne(u);
	}

	public List<AoaUser> queryBydeptId(int id) {
		return m.queryBydeptId(id);
	}

	public AoaUser queryBydeptId1(int id) {
		return m.queryBydeptId1(id);
	}

	public List<AoaUser> queryAll(String userName) {
		return m.queryAll(userName);
	}

	public AoaUser queryByUserId(int id) {
		return m.queryByUserId(id);
	}

	

}
