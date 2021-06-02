package com.mox.service.user;

import java.util.List;

import com.mox.base.BaseService;
import com.mox.entity.user.AoaUser;

public interface AoaUserService extends BaseService<AoaUser> {
	AoaUser queryOne(AoaUser u);
	List<AoaUser> queryBydeptId(int id);
	AoaUser queryBydeptId1(int id);
	List<AoaUser> queryAll(String userName);
	AoaUser queryByUserId(int id);

}
